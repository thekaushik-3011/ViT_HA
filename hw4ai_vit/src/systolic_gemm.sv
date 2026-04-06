`timescale 1ns / 1ps

// ======================================================================
// GEMM Core / Systolic Array Wrapper
// Computes Y = X * W + B
// Used commonly for MLP fc1, fc2, and Q/K/V/Proj Attention blocks.
// ======================================================================

module systolic_gemm #(
    parameter int SEQ_LEN = 197,
    parameter int IN_DIM  = 192,
    parameter int OUT_DIM = 768
)(
    input  logic clk,
    input  logic rst_n,
    
    input  logic start,
    output logic done,
    
    // BRAM Interface for X
    output logic [15:0] x_addr,
    input  logic signed [15:0] x_data,
    
    // BRAM Interface for W & B
    output logic [15:0] w_addr,
    input  logic signed [15:0] w_data,
    output logic [15:0] b_addr,
    input  logic signed [15:0] b_data,
    
    // BRAM Interface for Y (Output)
    output logic [15:0] y_addr,
    output logic signed [15:0] y_data,
    output logic y_we
);

    // This is a highly abstracted sequential multiplier for generic logic flow. 
    // In a high-performance Systolic Array scenario, a grid of PEs processes K and N dims simultaneously.
    
    logic [15:0] i, j, k;
    logic signed [31:0] acc;
    
    assign x_addr = i * IN_DIM + k;
    assign w_addr = k * OUT_DIM + j;
    assign b_addr = j;
    
    typedef enum logic [1:0] {IDLE, COMPUTE_K, WRITE_Y} state_t;
    state_t state;
    
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            i <= 0; j <= 0; k <= 0;
            y_we <= 0;
            done <= 0;
            acc <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    y_we <= 0;
                    if (start) begin
                        state <= COMPUTE_K;
                        i <= 0; j <= 0; k <= 0;
                        acc <= 0; // Preload bias conceptually, or add later
                    end
                end
                
                COMPUTE_K: begin
                    y_we <= 0;
                    
                    // Accumulate conceptually on the SAME cycle (valid for 0-latency Mock BRAM)
                    acc <= acc + (x_data * w_data);
                    
                    k <= k + 1;
                    if (k == IN_DIM - 1) begin
                        state <= WRITE_Y;
                    end
                end
                
                WRITE_Y: begin
                    y_we <= 1;
                    y_addr <= i * OUT_DIM + j;
                    
                    // Add bias, shift by 8 for Q8.8, and saturate
                    y_data <= ((acc + (b_data <<< 8)) >>> 8) >  32767 ?  16'sd32767 : 
                              ((acc + (b_data <<< 8)) >>> 8) < -32768 ? -16'sd32768 : 
                              ((acc + (b_data <<< 8)) >>> 8);
                    
                    // Iterate loops
                    acc <= 0;
                    k <= 0;
                    
                    if (j == OUT_DIM - 1) begin
                        j <= 0;
                        if (i == SEQ_LEN - 1) begin // Seq Len parameter
                            state <= IDLE;
                            done <= 1;
                        end else begin
                            i <= i + 1;
                            state <= COMPUTE_K;
                        end
                    end else begin
                        j <= j + 1;
                        state <= COMPUTE_K;
                    end
                end
            endcase
        end
    end
endmodule
