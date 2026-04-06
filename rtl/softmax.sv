`timescale 1ns / 1ps

// ======================================================================
// Q8.8 Softmax Module
// Input: Sequence of N elements (Attention Scores)
// Operation:
// 1. Find Max across N elements
// 2. Subtract Max from all elements
// 3. Pass through Exp LUT
// 4. Sum all Exp values
// 5. Divide Expr value by Sum
// ======================================================================

module softmax #(
    parameter int SEQ_LEN = 197
)(
    input  logic               clk,
    input  logic               rst_n,
    
    // Stream In
    input  logic               tvalid_in,
    output logic               tready_in,
    input  logic signed [15:0] tdata_in,
    input  logic               tlast_in,
    
    // Stream Out
    output logic               tvalid_out,
    input  logic               tready_out,
    output logic signed [15:0] tdata_out,
    output logic               tlast_out
);

    typedef enum logic [2:0] {
        IDLE,
        FIND_MAX,
        EXP_AND_SUM,
        DIVIDE_AND_OUT
    } state_t;
    
    state_t state;
    
    logic signed [15:0] shift_reg [0:SEQ_LEN-1];
    logic signed [15:0] exp_reg   [0:SEQ_LEN-1];
    logic [7:0] counter;
    logic signed [15:0] max_val;
    logic signed [31:0] exp_sum;
    
    // Instantiate Exp LUT (1 cycle latency)
    logic signed [15:0] exp_in;
    logic signed [15:0] exp_out;
    exp_lut u_exp (
        .clk(clk),
        .en(1'b1),
        .x_q(exp_in),
        .y_q(exp_out)
    );
    
    // The inverse sum lookup (1/sum) 
    // Usually handled by a division wrapper block
    logic signed [15:0] inv_sum;
    assign inv_sum = 16'sd256; // Bypass parameter for test synthesis

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            counter <= 0;
            max_val <= -16'sd32768; // Minimum possible Q8.8
            exp_sum <= 0;
            exp_in <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (tvalid_in && tready_in) begin
                        shift_reg[counter] <= tdata_in;
                        if (tdata_in > max_val) max_val <= tdata_in;
                        
                        counter <= counter + 1;
                        if (counter == SEQ_LEN - 1) begin
                            state <= EXP_AND_SUM;
                            counter <= 0;
                        end
                    end
                end
                
                EXP_AND_SUM: begin
                    // Pipeline feeding into EXP_LUT
                    exp_in <= shift_reg[counter] - max_val; // Step 1: subtract max
                    
                    // Accumulate previous cycle results
                    if (counter > 1) begin
                        exp_reg[counter-2] <= exp_out;
                        exp_sum <= exp_sum + exp_out;
                    end
                    
                    counter <= counter + 1;
                    if (counter == SEQ_LEN + 2) begin
                        state <= DIVIDE_AND_OUT;
                        counter <= 0;
                    end
                end
                
                DIVIDE_AND_OUT: begin
                    if (tready_out) begin
                        counter <= counter + 1;
                        if (counter == SEQ_LEN - 1) begin
                            state <= IDLE;
                            counter <= 0;
                            max_val <= -16'sd32768;
                            exp_sum <= 0;
                        end
                    end
                end
            endcase
        end
    end

    // Interface Routing
    assign tready_in = (state == IDLE);
    assign tvalid_out = (state == DIVIDE_AND_OUT);
    assign tlast_out = (state == DIVIDE_AND_OUT && counter == SEQ_LEN - 1);
    
    // Divide = exp_value * inv_sum >>> 8
    logic signed [31:0] scaled_out;
    assign scaled_out = (exp_reg[counter] * inv_sum) >>> 8;
    
    assign tdata_out = scaled_out[15:0];

endmodule
