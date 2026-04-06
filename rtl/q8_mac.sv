`timescale 1ns / 1ps

module q8_mac (
    input  logic               clk,
    input  logic               rst_n,
    input  logic               en,
    input  logic               clear,
    input  logic signed [15:0] a,
    input  logic signed [15:0] b,
    output logic signed [15:0] out
);

    logic signed [31:0] product;
    logic signed [31:0] acc;

    // Combinatorial multiplier
    assign product = a * b;

    // Accumulator register
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc <= '0;
        end else if (en) begin
            if (clear) begin
                acc <= product;
            end else begin
                acc <= acc + product;
            end
        end
    end

    // Fixed-point rounding (add 0.5 in Q8.8 space, which is 128)
    logic signed [31:0] acc_rounded;
    assign acc_rounded = acc + 32'sd128;

    // Arithmetic right shift by 8 bits to return to Q8.8 format
    logic signed [31:0] shifted_acc;
    assign shifted_acc = acc_rounded >>> 8;

    // Clipping (saturating math to 16-bit boundaries)
    always_comb begin
        if (shifted_acc > 32'sd32767) begin
            out = 16'sd32767;
        end else if (shifted_acc < -32'sd32768) begin
            out = -16'sd32768;
        end else begin
            out = shifted_acc[15:0];
        end
    end

endmodule
