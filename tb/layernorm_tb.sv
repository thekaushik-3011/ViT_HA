`timescale 1ns / 1ps

module layernorm_tb;

    // Parameters
    localparam int EMBED_DIM = 4; // Using 4 for quick simulation instead of 192

    // Signals
    logic clk;
    logic rst_n;
    
    logic tvalid_in, tready_in, tlast_in;
    logic signed [15:0] tdata_in;
    
    logic tvalid_out, tready_out, tlast_out;
    logic signed [15:0] tdata_out;
    
    logic signed [15:0] gamma;
    logic signed [15:0] beta;

    // UUT
    layernorm #(
        .EMBED_DIM(EMBED_DIM)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .tvalid_in(tvalid_in),
        .tready_in(tready_in),
        .tdata_in(tdata_in),
        .tlast_in(tlast_in),
        .gamma(gamma),
        .beta(beta),
        .tvalid_out(tvalid_out),
        .tready_out(tready_out),
        .tdata_out(tdata_out),
        .tlast_out(tlast_out)
    );

    // Clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test Sequence
    initial begin
        $dumpfile("layernorm_tb.vcd");
        $dumpvars(0, layernorm_tb);

        // Initialize
        rst_n = 0;
        tvalid_in = 0;
        tdata_in = 0;
        tlast_in = 0;
        tready_out = 1; // Always ready to receive for simplicity
        
        // Q8.8 Weights (Gamma = 1.0, Beta = 0.0)
        gamma = 16'sd256; 
        beta  = 16'sd0;

        #20;
        rst_n = 1;
        #10;

        // ── Stream In 4 tokens ──
        // We will send values: 2.0, 4.0, 6.0, 8.0
        // Q8.8 values: 512, 1024, 1536, 2048
        // Mean should calculate to: 5.0 (1280 in Q8.8)
        
        $display("[%0t] Starting Input Stream...", $time);
        
        stream_val(16'sd512,  0);
        stream_val(16'sd1024, 0);
        stream_val(16'sd1536, 0);
        stream_val(16'sd2048, 1);
        
        // Let it compute
        wait(tvalid_out == 1);
        $display("[%0t] Data Ready for Output!", $time);
        
        // Capture Outputs
        for (int i = 0; i < EMBED_DIM; i++) begin
            @(posedge clk);
            if (tvalid_out && tready_out) begin
                $display("Output %0d: %d (Q8.8)", i, tdata_out);
                if (tlast_out) $display("tlast_out asserted.");
            end
        end

        #40;
        $display("Test Finished!");
        $finish;
    end

    // Helper task to stream AXI data
    task stream_val(input logic signed [15:0] data, input logic last);
        begin
            @(posedge clk);
            tvalid_in <= 1;
            tdata_in  <= data;
            tlast_in  <= last;
            // Wait for handshake
            do begin
                @(posedge clk);
            end while (tready_in == 0);
            tvalid_in <= 0;
            tlast_in  <= 0;
        end
    endtask

endmodule
