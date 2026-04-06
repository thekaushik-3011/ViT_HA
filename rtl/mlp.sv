`timescale 1ns / 1ps

// ======================================================================
// MLP Core
// Computes Y = GELU(X * W1 + B1) * W2 + B2
// Connects the basic RTL IPs (GEMM and GELU)
// ======================================================================

module mlp #(
    parameter int EMBED_DIM = 192,
    parameter int HIDDEN_DIM = 768,
    parameter int SEQ_LEN = 197
)(
    input  logic clk,
    input  logic rst_n,
    
    input  logic start,
    output logic done,
    
    // Abstracted block memory interface
    output logic [15:0] mem_addr,
    input  logic signed [15:0] mem_rdata,
    output logic signed [15:0] mem_wdata,
    output logic mem_we
);

    // This module sequences the systolic_gemm block twice.
    // 1. GEMM 1: fc1
    // 2. Pass output through GELU
    // 3. GEMM 2: fc2
    
    logic gemm_start, gemm_done;
    
    systolic_gemm #(
        .IN_DIM(EMBED_DIM),
        .OUT_DIM(HIDDEN_DIM)
    ) fc1 (
        .clk(clk),
        .rst_n(rst_n),
        .start(gemm_start),
        .done(gemm_done),
        // Abstract pointers tied to controller here
        .x_addr(), .x_data(16'd0),
        .w_addr(), .w_data(16'd0),
        .b_addr(), .b_data(16'd0),
        .y_addr(), .y_data(), .y_we()
    );
    
    // GELU Instantiation 
    logic signed [15:0] gelu_in;
    logic signed [15:0] gelu_out;
    gelu_lut u_gelu (
        .clk(clk), 
        .en(1'b1), 
        .x_q(gelu_in), 
        .y_q(gelu_out)
    );
    
    // State machine sequencing placeholder
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            done <= 0;
            gemm_start <= 0;
        end else begin
            // Complex FSM controlling GEMM1 -> GELU Stream -> GEMM2
        end
    end

endmodule
