`timescale 1ns / 1ps

// ======================================================================
// ViT Top Level Accelerator
// Encapsulates the complete ViT datapath logic.
// Sequence:
// 1. Image in -> Patch Embed
// 2. Add CLS Token & Positional Embeddings
// 3. Loop: 12x Transformer Blocks (MHSA + MLP + LayerNorms)
// 4. Final LayerNorm
// 5. Classification Head (Linear)
// ======================================================================

module vit_top #(
    parameter int DEPTH = 12
)(
    input  logic clk,
    input  logic rst_n,
    
    input  logic start_inference,
    output logic inference_done,
    
    // AXI-Stream for Image Input
    input  logic [31:0] s_axis_tdata,
    input  logic s_axis_tvalid,
    output logic s_axis_tready,
    input  logic s_axis_tlast,
    
    // Output Logits
    output logic signed [15:0] logit_benign,
    output logic signed [15:0] logit_malware
);

    // ── Phase 1: Patch Embed ──
    logic patch_valid;
    patch_embed u_patch_embed (
        .clk(clk), .rst_n(rst_n),
        .pixel_in(s_axis_tdata[15:0]),
        .valid_in(s_axis_tvalid),
        .patch_out(), .valid_out(patch_valid)
    );
    
    // ── Phase 2: Transformer Loop ──
    // In a fully rolled architecture, there is 1 physical vit_block
    // that gets cycled 12 times using different weights from BRAM.
    logic [3:0] block_counter;
    
    // ── Phase 3: Final LayerNorm ──
    layernorm u_final_ln (
        .clk(clk), .rst_n(rst_n),
        .tvalid_in(), .tready_in(), .tdata_in(), .tlast_in(),
        .gamma(), .beta(),
        .tvalid_out(), .tready_out(), .tdata_out(), .tlast_out()
    );
    
    // ── Phase 4: Head ──
    systolic_gemm #(
        .IN_DIM(192),
        .OUT_DIM(2)
    ) classification_head (
        .clk(clk), .rst_n(rst_n),
        .start(),
        .done(inference_done),
        .x_addr(), .x_data(),
        .w_addr(), .w_data(),
        .b_addr(), .b_data(),
        .y_addr(), .y_data(), .y_we()
    );

    // Master FSM
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            block_counter <= 0;
            // Initialization
        end else begin
            // Top level master state machine routing data through the 
            // single-instance modules block-by-block.
        end
    end

endmodule
