`timescale 1ns / 1ps

module softmax_tb;

    localparam int SEQ_LEN = 3;

    logic clk;
    logic rst_n;
    
    logic tvalid_in, tready_in, tlast_in;
    logic signed [15:0] tdata_in;
    
    logic tvalid_out, tready_out, tlast_out;
    logic signed [15:0] tdata_out;

    softmax #(
        .SEQ_LEN(SEQ_LEN)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .tvalid_in(tvalid_in),
        .tready_in(tready_in),
        .tdata_in(tdata_in),
        .tlast_in(tlast_in),
        .tvalid_out(tvalid_out),
        .tready_out(tready_out),
        .tdata_out(tdata_out),
        .tlast_out(tlast_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("softmax_tb.vcd");
        $dumpvars(0, softmax_tb);

        rst_n = 0;
        tvalid_in = 0;
        tdata_in = 0;
        tlast_in = 0;
        tready_out = 1;
        
        #20;
        rst_n = 1;
        #10;
        
        $display("[%0t] Starting Softmax Input Stream...", $time);
        
        // We will send 3 scores. 
        // e.g., 0.0, -1.0, -2.0
        // Max is 0.0.
        // Diff = [0.0, -1.0, -2.0]
        // Exp = [1.0, 0.367, 0.135] -> Q8.8 = [256, 94, 34]
        // Sum = 384
        // InvSum * 256 is the multiplier. 
        
        stream_val(16'sd0, 0);       // 0.0
        stream_val(-16'sd256, 0);    // -1.0
        stream_val(-16'sd512, 1);    // -2.0
        
        wait(tvalid_out == 1);
        $display("[%0t] Softmax Data Ready!", $time);
        
        for (int i = 0; i < SEQ_LEN; i++) begin
            @(posedge clk);
            if (tvalid_out && tready_out) begin
                $display("Softmax Output %0d: %d (Q8.8)", i, tdata_out);
            end
        end

        #40;
        $display("Softmax Test Finished!");
        $finish;
    end

    task stream_val(input logic signed [15:0] data, input logic last);
        begin
            @(posedge clk);
            tvalid_in <= 1;
            tdata_in  <= data;
            tlast_in  <= last;
            do begin
                @(posedge clk);
            end while (tready_in == 0);
            tvalid_in <= 0;
            tlast_in  <= 0;
        end
    endtask

endmodule
