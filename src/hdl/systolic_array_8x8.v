module systolic_array_8x8 (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        en,
    input  wire        mode,  // 0: WS, 1: OS
    input  wire        load,
    input  wire        clear,
    
    // Flattened Input vectors mapping the 8 columns and 8 rows respectively
    input  wire [127:0] in_n_vec, // 8 x 16-bit
    input  wire [127:0] in_w_vec, // 8 x 16-bit
    
    // Output vector evaluating the bottom south edges
    output wire [127:0] out_s_vec
);
    // 2D wire arrays facilitating internal PE propagation 
    wire [15:0] n_wire [0:8][0:7];
    wire [15:0] w_wire [0:7][0:8];
    
    genvar i, j;
    generate
        // Top boundary data assignment
        for (j = 0; j < 8; j = j + 1) begin : top_in
            assign n_wire[0][j] = in_n_vec[(j*16)+15 : j*16];
        end
        
        // Left boundary physical assignment
        for (i = 0; i < 8; i = i + 1) begin : left_in
            assign w_wire[i][0] = in_w_vec[(i*16)+15 : i*16];
        end
        
        // Grid structural instantiations mapped functionally to processing elements
        for (i = 0; i < 8; i = i + 1) begin : row
            for (j = 0; j < 8; j = j + 1) begin : col
                pe u_pe (
                    .clk   (clk),
                    .rst_n (rst_n),
                    .en    (en),
                    .mode  (mode),
                    .load  (load),
                    .clear (clear),
                    .in_n  (n_wire[i][j]),
                    .in_w  (w_wire[i][j]),
                    .out_s (n_wire[i+1][j]),
                    .out_e (w_wire[i][j+1])
                );
            end
        end
        
        // Expose southern bound matrices outward
        for (j = 0; j < 8; j = j + 1) begin : bottom_out
            assign out_s_vec[(j*16)+15 : j*16] = n_wire[8][j];
        end
    endgenerate
endmodule
