module axi_mlp_wrapper (
    input  wire        aclk,
    input  wire        aresetn,
    
    // Control signals from standard AXI-Lite (Memory Mapped via PYNQ Overlay GPIO)
    input  wire        ctrl_mode,  // 0: Weight Stationary (WS), 1: Output Stationary (OS)
    input  wire        ctrl_load,
    input  wire        ctrl_clear,
    input  wire        ctrl_bypass_gelu, // Bypass flag dynamically pushing results out raw
    
    // S_AXIS_N: Slave Stream driving the North Bus (Weights or Accumulator bounds)
    input  wire [127:0] s_axis_n_tdata,
    input  wire         s_axis_n_tvalid,
    output wire         s_axis_n_tready,
    input  wire         s_axis_n_tlast,
    
    // S_AXIS_W: Slave Stream driving the West Bus (Activations)
    input  wire [127:0] s_axis_w_tdata,
    input  wire         s_axis_w_tvalid,
    output wire         s_axis_w_tready,
    input  wire         s_axis_w_tlast,
    
    // M_AXIS_S: Master Stream reading the physical South Bus Outputs 
    output wire [127:0] m_axis_s_tdata,
    output wire         m_axis_s_tvalid,
    input  wire         m_axis_s_tready,
    output wire         m_axis_s_tlast
);

    // Ensure valid handshaking natively across concurrent buses avoiding pipeline stalls
    wire array_en = (s_axis_n_tvalid && s_axis_w_tvalid) && m_axis_s_tready;
    
    assign s_axis_n_tready = array_en;
    assign s_axis_w_tready = array_en;

    wire [127:0] array_out;

    // Core Instantiation logically mapped natively
    systolic_array_8x8 u_array (
        .clk        (aclk),
        .rst_n      (aresetn),
        .en         (array_en),   // Synchronized stepping controlled strictly via AXI ready
        .mode       (ctrl_mode),
        .load       (ctrl_load),
        .clear      (ctrl_clear),
        .in_n_vec   (s_axis_n_tdata),
        .in_w_vec   (s_axis_w_tdata),
        .out_s_vec  (array_out)
    );

    // 8 Parallel BRAM LUT operations structurally tracking physical MAC array bounds securely  
    wire [127:0] gelu_out;
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : gelu_inst
            gelu_bram u_gelu (
                .clk  (aclk),
                .en   (array_en),
                .addr (array_out[(i*16)+15 : i*16]), // Pass isolated 16-bit bounds independently
                .dout (gelu_out[(i*16)+15  : i*16])
            );
        end
    endgenerate

    // Output Dataflow pipeline mapped 
    reg [127:0] out_reg;
    reg         valid_reg;
    reg         last_reg;

    always @(posedge aclk) begin
        if (!aresetn) begin
            out_reg   <= 128'd0;
            valid_reg <= 1'b0;
            last_reg  <= 1'b0;
        end else if (m_axis_s_tready) begin
            // 1 Cycle pipeline delay matched inherently allowing BRAM evaluations securely 
            out_reg   <= ctrl_bypass_gelu ? array_out : gelu_out;
            valid_reg <= array_en; // Follow valid pipeline
            last_reg  <= s_axis_n_tlast | s_axis_w_tlast; // Pass last natively bounds
        end
    end

    // Master stream bounds evaluation 
    assign m_axis_s_tdata  = out_reg;
    assign m_axis_s_tvalid = valid_reg;
    assign m_axis_s_tlast  = last_reg;

endmodule
