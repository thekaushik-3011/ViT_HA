`timescale 1ns / 1ps

// ======================================================================
// Patch Embedding Core
// Unfolds the 224x224x3 image into 196 patches of 192 dimensions
// Mathematically equivalent to a Conv2d(3, 192, 16, stride=16)
// ======================================================================

module patch_embed #(
    parameter int IMG_SIZE = 224,
    parameter int PATCH_SIZE = 16,
    parameter int EMBED_DIM = 192
)(
    input  logic clk,
    input  logic rst_n,
    
    // Abstract Image Stream
    input  logic signed [15:0] pixel_in, // Streamed sequentially
    input  logic valid_in,
    
    // Abstract Patch Stream
    output logic signed [15:0] patch_out,
    output logic valid_out
);

    // Conceptually, buffers rows of the image, constructs 16x16 blocks,
    // and applies a dot product with the PatchEmbed projection weights.
    // Length of each dot product = 16 * 16 * 3 = 768 elements.
    
    systolic_gemm #(
        .IN_DIM(768),
        .OUT_DIM(EMBED_DIM)
    ) conv_mac_engine (
        .clk(clk),
        .rst_n(rst_n),
        .start(),
        .done(),
        .x_addr(), .x_data(16'd0),
        .w_addr(), .w_data(16'd0),
        .b_addr(), .b_data(16'd0),
        .y_addr(), .y_data(), .y_we()
    );

endmodule
