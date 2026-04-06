`timescale 1ns / 1ps

// ============================================
// GELU LUT Module (512 entries, Q8.8)
// Input Range: [-4.0, +4.0] (Q8.8: [-1024, +1024])
// Latency: 1 cycle
// ============================================
module gelu_lut (
    input  logic               clk,
    input  logic               en,
    input  logic signed [15:0] x_q,
    output logic signed [15:0] y_q
);

    logic signed [15:0] rom [0:511];
    
    initial begin
        $readmemh("rtl/gelu.mem", rom);
    end

    logic signed [16:0] x_shifted;
    logic signed [16:0] idx_calc;
    logic        [8:0]  idx;

    // x_q - (-1024) = x_q + 1024
    assign x_shifted = x_q + 17'sd1024;
    assign idx_calc  = x_shifted >>> 2;

    always_comb begin
        if (idx_calc > 17'sd511)
            idx = 9'h1FF;
        else if (idx_calc < 17'sd0)
            idx = 9'h000;
        else
            idx = idx_calc[8:0];
    end

    always_ff @(posedge clk) begin
        if (en) begin
            y_q <= rom[idx];
        end
    end

endmodule

// ============================================
// EXP LUT Module (for Softmax) (512 entries, Q8.8)
// Input Range: [-8.0, 0.0] (Q8.8: [-2048, 0])
// Latency: 1 cycle
// ============================================
module exp_lut (
    input  logic               clk,
    input  logic               en,
    input  logic signed [15:0] x_q,
    output logic signed [15:0] y_q
);

    logic signed [15:0] rom [0:511];
    
    initial begin
        $readmemh("rtl/exp.mem", rom);
    end

    logic signed [16:0] x_shifted;
    logic signed [16:0] idx_calc;
    logic        [8:0]  idx;

    // x_q - (-2048) = x_q + 2048
    assign x_shifted = x_q + 17'sd2048;
    assign idx_calc  = x_shifted >>> 2;

    always_comb begin
        if (idx_calc > 17'sd511)
            idx = 9'h1FF;
        else if (idx_calc < 17'sd0)
            idx = 9'h000;
        else
            idx = idx_calc[8:0];
    end

    always_ff @(posedge clk) begin
        if (en) begin
            y_q <= rom[idx];
        end
    end

endmodule
