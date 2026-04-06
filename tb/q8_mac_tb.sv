`timescale 1ns / 1ps

module q8_mac_tb;

    logic clk;
    logic rst_n;
    logic en;
    logic clear;
    logic signed [15:0] a;
    logic signed [15:0] b;
    logic signed [15:0] out;

    q8_mac uut (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .clear(clear),
        .a(a),
        .b(b),
        .out(out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize
        rst_n = 0;
        en = 0;
        clear = 0;
        a = 0;
        b = 0;
        
        #20 rst_n = 1;
        
        // --- Test 1: Simple Multiplication (1.5 * 2.0 = 3.0) ---
        // 1.5 in Q8.8 = 384
        // 2.0 in Q8.8 = 512
        // Output should be 768 (3.0 in Q8.8)
        @(posedge clk);
        en = 1;
        clear = 1;
        a = 16'sd384; 
        b = 16'sd512;
        @(posedge clk);
        en = 0; 
        // Wait for combinational output to settle
        #1;
        if (out === 16'sd768) $display("PASS: Test 1 (1.5 * 2.0 = 3.0)");
        else $display("FAIL: Test 1 Output %d", out);

        // --- Test 2: Accumulation (-0.5 * 0.5 = -0.25) ---
        // Prev Acc = 768 
        // -0.5 in Q8.8 = -128
        // 0.5 in Q8.8 = 128
        // New Acc should be 3.0 - 0.25 = 2.75
        // 2.75 in Q8.8 = 704
        @(posedge clk);
        en = 1;
        clear = 0;
        a = -16'sd128;
        b = 16'sd128;
        @(posedge clk);
        en = 0;
        #1;
        if (out === 16'sd704) $display("PASS: Test 2 (Accumulate -> 2.75)");
        else $display("FAIL: Test 2 Output %d", out);
        
        // --- Test 3: Clear with new value ---
        // 0.25 * 4.0 = 1.0 (256)
        @(posedge clk);
        en = 1;
        clear = 1;
        a = 16'sd64;
        b = 16'sd1024;
        @(posedge clk);
        en = 0;
        #1;
        if (out === 16'sd256) $display("PASS: Test 3 (Clear -> 1.0)");
        else $display("FAIL: Test 3 Output %d", out);

        // --- Test 4: Positive Saturation ---
        // Let's force a huge accumulation
        @(posedge clk);
        en = 1;
        clear = 1;
        a = 16'sd32000;
        b = 16'sd32000;
        // 32000 * 32000 = 1,024,000,000 (Fits in 32 bit). 
        // >> 8 is 4,000,000. 
        // Saturation should clamp this to 32767.
        @(posedge clk);
        en = 0;
        #1;
        if (out === 16'sd32767) $display("PASS: Test 4 (Positive Saturation)");
        else $display("FAIL: Test 4 Output %d", out);
        
        // --- Test 5: Negative Saturation ---
        @(posedge clk);
        en = 1;
        clear = 1;
        a = -16'sd32000;
        b = 16'sd32000;
        @(posedge clk);
        en = 0;
        #1;
        if (out === -16'sd32768) $display("PASS: Test 5 (Negative Saturation)");
        else $display("FAIL: Test 5 Output %d", out);

        $display("All tests completed.");
        $finish;
    end

endmodule
