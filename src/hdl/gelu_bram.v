module gelu_bram (
    input  wire        clk,
    input  wire        en,
    input  wire signed [15:0] addr, // Q8.8 fixed-point input
    output reg  signed [15:0] dout
);
    // Reduced LUT: covers Q8.8 range [-4.0, +4.0] = 2048 entries (11-bit address)
    // 2048 x 16-bit = 32Kbits = 1 RAMB36 per instance (8 instances = 8 RAMB36 total)
    (* ram_style = "block" *) reg signed [15:0] memory [0:2047];

    // Map Q8.8 signed input to 11-bit unsigned LUT index
    // Input range [-4.0, +4.0] -> clamp and shift to [0, 2047]
    wire signed [15:0] clamped = (addr < -16'sd1024) ? -16'sd1024 :
                                  (addr >  16'sd1023) ?  16'sd1023 : addr;
    wire [10:0] index = clamped[10:0]; // lower 11 bits after clamping

    initial begin
        $readmemh("../../src/hdl/gelu.mem", memory);
    end

    always @(posedge clk) begin
        if (en)
            dout <= memory[index];
    end

endmodule
