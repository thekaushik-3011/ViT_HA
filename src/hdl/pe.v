module pe (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        en,        
    input  wire        mode,      // 0: Weight Stationary (WS), 1: Output Stationary (OS)
    input  wire        load,      // WS: Load Weight, OS: Drain partial sum
    input  wire        clear,     // Clear local accumulator
    
    input  wire signed [15:0] in_n, 
    input  wire signed [15:0] in_w, 
    
    output reg  signed [15:0] out_s, 
    output reg  signed [15:0] out_e  
);

    reg signed [15:0] weight_reg;
    reg signed [31:0] psum_reg; 

    // Local MAC bounds scaled dynamically
    wire signed [31:0] mac_result = in_w * (mode ? in_n : weight_reg);
    
    // Shifted block for Q8.8 equivalent conversion (divide 256 effectively logic mapped)
    wire signed [15:0] mac_trunc = mac_result[23:8];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            weight_reg <= 16'd0;
            psum_reg   <= 32'd0;
            out_s      <= 16'd0;
            out_e      <= 16'd0;
        end else if (en) begin
            out_e <= in_w; // Pass activation East consistently across pipelines
            
            if (clear)
                psum_reg <= 32'd0;
                
            if (~mode) begin 
                // --- Weight Stationary (WS) ---
                if (load) begin
                    weight_reg <= in_n; // Pre-load static weight from North bus
                    out_s      <= 16'd0;
                end else begin
                    // in_n operates dynamically as the generic Partial Sum tracking South
                    out_s <= in_n + mac_trunc;
                end
            end else begin 
                // --- Output Stationary (OS) ---
                if (load) begin
                    // Drain phase: cascade output downward logically simulating data reduction
                    out_s    <= psum_reg[23:8]; 
                    psum_reg <= in_n; // optionally shift down from adjacent neighbor bounds
                end else begin
                    // in_n operates exclusively as Weight stream traversing South
                    psum_reg <= psum_reg + mac_result; 
                    out_s    <= in_n; // Pass weight cleanly
                end
            end
        end
    end
endmodule
