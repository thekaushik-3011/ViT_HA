`timescale 1ns / 1ps

module tb_axi_mlp();

    // -----------------------------------------------------
    // Clock & Reset definitions mapped correctly
    // -----------------------------------------------------
    reg aclk;
    reg aresetn;
    
    // -----------------------------------------------------
    // AXI-Lite mapped structural control pins bridging OS/WS logic cleanly
    // -----------------------------------------------------
    reg ctrl_mode;
    reg ctrl_load;
    reg ctrl_clear;
    reg ctrl_bypass_gelu;
    
    // -----------------------------------------------------
    // Interfacing Streams mirroring Zynq PS physical logic bounds
    // -----------------------------------------------------
    reg [127:0] s_axis_n_tdata;
    reg         s_axis_n_tvalid;
    wire        s_axis_n_tready;
    reg         s_axis_n_tlast;
    
    reg [127:0] s_axis_w_tdata;
    reg         s_axis_w_tvalid;
    wire        s_axis_w_tready;
    reg         s_axis_w_tlast;
    
    wire [127:0] m_axis_s_tdata;
    wire         m_axis_s_tvalid;
    reg          m_axis_s_tready;
    wire         m_axis_s_tlast;
    
    // Core instancing 
    axi_mlp_wrapper dut (
        .aclk(aclk),
        .aresetn(aresetn),
        .ctrl_mode(ctrl_mode),
        .ctrl_load(ctrl_load),
        .ctrl_clear(ctrl_clear),
        .ctrl_bypass_gelu(ctrl_bypass_gelu),
        
        .s_axis_n_tdata(s_axis_n_tdata),
        .s_axis_n_tvalid(s_axis_n_tvalid),
        .s_axis_n_tready(s_axis_n_tready),
        .s_axis_n_tlast(s_axis_n_tlast),
        
        .s_axis_w_tdata(s_axis_w_tdata),
        .s_axis_w_tvalid(s_axis_w_tvalid),
        .s_axis_w_tready(s_axis_w_tready),
        .s_axis_w_tlast(s_axis_w_tlast),
        
        .m_axis_s_tdata(m_axis_s_tdata),
        .m_axis_s_tvalid(m_axis_s_tvalid),
        .m_axis_s_tready(m_axis_s_tready),
        .m_axis_s_tlast(m_axis_s_tlast)
    );
    
    // Generate constant 100MHz clock (matches standard PYNQ PL blocks perfectly)
    initial begin
        aclk = 0;
        forever #5 aclk = ~aclk;
    end
    
    initial begin
        // Securely initialize states cleanly avoiding Xs
        aresetn = 0;
        ctrl_mode = 0;
        ctrl_load = 0;
        ctrl_clear = 0;
        ctrl_bypass_gelu = 1;
        
        s_axis_n_tdata = 0;
        s_axis_n_tvalid = 0;
        s_axis_n_tlast = 0;
        
        s_axis_w_tdata = 0;
        s_axis_w_tvalid = 0;
        s_axis_w_tlast = 0;
        
        m_axis_s_tready = 1;
        
        #20 aresetn = 1;
        
        // -----------------------------------------------------
        // TODO for local verification:
        // 1. Utilize $readmemh to parse W1.mem constraints onto s_axis_n_tdata
        // 2. Utilize $readmemh to evaluate input_tb.mem pushing onto s_axis_w_tdata
        // 3. Set s_axis_*_tvalid = 1 physically triggering array_en
        // 4. Capture m_axis_s_tvalid results bounding directly to verify against expected_out.mem
        // -----------------------------------------------------
        
        $display("RTL Testbench initialized securely. Please load test-vectors derived from Python script to physically assert verification limits.");
        
        #100 $finish;
    end
endmodule
