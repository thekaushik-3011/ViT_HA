`timescale 1ns / 1ps

module systolic_gemm_tb;

    localparam int SEQ_LEN = 2;
    localparam int IN_DIM = 3;
    localparam int OUT_DIM = 2;

    logic clk;
    logic rst_n;
    logic start;
    logic done;
    
    logic [15:0] x_addr;
    logic signed [15:0] x_data;
    
    logic [15:0] w_addr;
    logic signed [15:0] w_data;
    
    logic [15:0] b_addr;
    logic signed [15:0] b_data;
    
    logic [15:0] y_addr;
    logic signed [15:0] y_data;
    logic y_we;

    systolic_gemm #(
        .SEQ_LEN(SEQ_LEN),
        .IN_DIM(IN_DIM),
        .OUT_DIM(OUT_DIM)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .done(done),
        .x_addr(x_addr), .x_data(x_data),
        .w_addr(w_addr), .w_data(w_data),
        .b_addr(b_addr), .b_data(b_data),
        .y_addr(y_addr), .y_data(y_data), .y_we(y_we)
    );

    // Mock Memory Arrays
    logic signed [15:0] mem_x [0:(SEQ_LEN * IN_DIM)-1];
    logic signed [15:0] mem_w [0:(IN_DIM * OUT_DIM)-1];
    logic signed [15:0] mem_b [0:OUT_DIM-1];
    logic signed [15:0] mem_y [0:(SEQ_LEN * OUT_DIM)-1];

    always_comb begin
        x_data = mem_x[x_addr];
        w_data = mem_w[w_addr];
        b_data = mem_b[b_addr];
    end

    always_ff @(posedge clk) begin
        if (y_we) mem_y[y_addr] <= y_data;
    end

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("systolic_gemm_tb.vcd");
        $dumpvars(0, systolic_gemm_tb);
        
        // Initialize Matrices
        // X = [[ 1.0,  0.5, -0.5],
        //      [-1.0,  2.0,  0.0]]
        mem_x[0] =  16'sd256;  mem_x[1] =  16'sd128;  mem_x[2] = -16'sd128;
        mem_x[3] = -16'sd256;  mem_x[4] =  16'sd512;  mem_x[5] =  16'sd0;
        
        // W = [[ 2.0, -1.0],
        //      [ 0.0,  1.0],
        //      [ 1.0,  0.5]]
        mem_w[0] =  16'sd512;  mem_w[1] = -16'sd256;
        mem_w[2] =  16'sd0;    mem_w[3] =  16'sd256;
        mem_w[4] =  16'sd256;  mem_w[5] =  16'sd128;
        
        // B = [ 0.5, -0.5 ]
        mem_b[0] = 16'sd128;  mem_b[1] = -16'sd128;
        
        rst_n = 0;
        start = 0;
        #20;
        rst_n = 1;
        #10;
        
        $display("[%0t] Starting Matrix Multiply...", $time);
        @(posedge clk);
        start = 1;
        @(posedge clk);
        start = 0;
        
        wait(done == 1);
        $display("[%0t] Matrix Multiply Done!", $time);
        
        // Evaluate expected results
        $display("Y[0,0] = %d (Expected 512)",  mem_y[0]);
        $display("Y[0,1] = %d (Expected -320)", mem_y[1]);
        $display("Y[1,0] = %d (Expected -384)", mem_y[2]);
        $display("Y[1,1] = %d (Expected 640)",  mem_y[3]);
        
        #40;
        $finish;
    end

endmodule
