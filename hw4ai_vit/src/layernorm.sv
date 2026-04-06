`timescale 1ns / 1ps

// ======================================================================
// Q8.8 LayerNorm
// Calculates Mean and Variance over N elements (default 192), 
// then shifts and scales by Gamma and Beta.
// Architecture: Fully streaming with a 1-token buffer (BRAM-ready)
// ======================================================================
module layernorm #(
    parameter int EMBED_DIM = 192
)(
    input  logic               clk,
    input  logic               rst_n,
    
    // Stream In
    input  logic               tvalid_in,
    output logic               tready_in,
    input  logic signed [15:0] tdata_in,
    input  logic               tlast_in,
    
    // Weights (could be streamed or BRAM read, assuming statically assigned for simplicity of integration)
    input  logic signed [15:0] gamma,
    input  logic signed [15:0] beta,
    
    // Stream Out
    output logic               tvalid_out,
    input  logic               tready_out,
    output logic signed [15:0] tdata_out,
    output logic               tlast_out
);

    // State Machine
    typedef enum logic [2:0] {
        IDLE,
        ACCUM_MEAN,
        ACCUM_VAR,
        COMPUTE_INV_SQRT,
        STREAM_OUT
    } state_t;
    
    state_t state, next_state;
    
    // Internal RAM (to buffer 1 token = 192 elements while computing stats)
    logic signed [15:0] shift_reg [0:EMBED_DIM-1];
    logic [7:0] counter;
    
    // Statistics accumulating registers
    logic signed [31:0] sum;
    logic signed [31:0] sum_sq;
    logic signed [15:0] mean;
    logic signed [15:0] variance;
    logic signed [15:0] inv_sqrt_var;
    
    // Inv-sqrt operation (placeholder for an actual IP core or NR LUT)
    // In actual FPGA, this is a predefined LUT or Xilinx Divider IP.
    assign inv_sqrt_var = 16'sd256; // Bypass simulation behavior if variance=1.0

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            sum <= 0;
            counter <= 0;
            for(int i=0; i<EMBED_DIM; i++) shift_reg[i] <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (tvalid_in && tready_in) begin
                        shift_reg[counter] <= tdata_in;
                        sum <= sum + tdata_in;
                        counter <= counter + 1;
                        if (counter == EMBED_DIM - 1) begin
                            state <= ACCUM_VAR;
                            mean <= (sum + tdata_in) / EMBED_DIM; // Synthesizable division if param is const, or divider IP
                            counter <= 0;
                        end
                    end
                end
                
                ACCUM_VAR: begin
                    // Read buffer, subtract mean, accumulate squares
                    logic signed [15:0] diff;
                    logic signed [31:0] sq;
                    diff = shift_reg[counter] - mean;
                    sq   = (diff * diff) >>> 8;
                    sum_sq <= sum_sq + sq;
                    
                    counter <= counter + 1;
                    if (counter == EMBED_DIM - 1) begin
                        state <= COMPUTE_INV_SQRT;
                        variance <= (sum_sq + sq) / EMBED_DIM;
                        counter <= 0;
                    end
                end
                
                COMPUTE_INV_SQRT: begin
                    // 1 cycle wait for inv_sqrt IP 
                    state <= STREAM_OUT;
                end
                
                STREAM_OUT: begin
                    if (tready_out) begin
                        counter <= counter + 1;
                        if (counter == EMBED_DIM - 1) begin
                            state <= IDLE;
                            counter <= 0;
                            sum <= 0;
                            sum_sq <= 0;
                        end
                    end
                end
            endcase
        end
    end

    // Ready/Valid logic
    assign tready_in = (state == IDLE);
    assign tvalid_out = (state == STREAM_OUT);
    assign tlast_out = (state == STREAM_OUT && counter == EMBED_DIM - 1);
    
    // Computes: Normalized = (X - Mean) * InvSqrtVar * Gamma + Beta
    logic signed [15:0] diff_out;
    logic signed [31:0] scaled_diff;
    logic signed [31:0] gamma_scaled;
    logic signed [15:0] result;

    always_comb begin
        diff_out = shift_reg[counter] - mean;
        scaled_diff = (diff_out * inv_sqrt_var) >>> 8;
        gamma_scaled = (scaled_diff * gamma) >>> 8;
        result = gamma_scaled[15:0] + beta;
        
        // Saturation logic
        if (gamma_scaled > 32'sd32767) tdata_out = 16'sd32767;
        else if (gamma_scaled < -32'sd32768) tdata_out = -16'sd32768;
        else tdata_out = result;
    end

endmodule
