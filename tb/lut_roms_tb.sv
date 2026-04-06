`timescale 1ns / 1ps

module lut_roms_tb;

    logic clk;
    logic en;
    logic signed [15:0] x_gelu, x_exp;
    logic signed [15:0] y_gelu, y_exp;

    gelu_lut u_gelu (
        .clk(clk),
        .en(en),
        .x_q(x_gelu),
        .y_q(y_gelu)
    );

    exp_lut u_exp (
        .clk(clk),
        .en(en),
        .x_q(x_exp),
        .y_q(y_exp)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        en = 0;
        x_gelu = 0;
        x_exp = 0;
        
        #20;
        
        // Test 1: GELU(0) and EXP(0)
        @(posedge clk);
        en = 1;
        x_gelu = 16'sd0;     // 0.0
        x_exp  = 16'sd0;     // 0.0
        
        @(posedge clk);
        en = 0;
        #1;
        $display("GELU(0.0) = %d (Expected ~0)", y_gelu);
        $display("EXP(0.0) = %d (Expected ~256)", y_exp);
        if (y_gelu !== 16'sd0) $display("FAIL GELU 0");
        if (y_exp !== 16'sd256) $display("FAIL EXP 0");

        // Test 2: GELU(-4.0) and EXP(-8.0)
        @(posedge clk);
        en = 1;
        x_gelu = -16'sd1024; // -4.0 in Q8.8
        x_exp  = -16'sd2048; // -8.0 in Q8.8
        
        @(posedge clk);
        en = 0;
        #1;
        $display("GELU(-4.0) = %d (Expected ~0)", y_gelu);
        $display("EXP(-8.0) = %d (Expected ~0)", y_exp);

        // Test 3: Out of bounds (Positive logic check)
        @(posedge clk);
        en = 1;
        x_gelu = 16'sd4000; // >4.0
        x_exp  = 16'sd1000; // >0.0
        
        @(posedge clk);
        en = 0;
        #1;
        // Should clamp to max table index
        $display("GELU(>4.0) = %d", y_gelu);
        $display("EXP(>0.0) = %d", y_exp);

        $display("LUT ROMs verification completed.");
        $finish;
    end
endmodule
