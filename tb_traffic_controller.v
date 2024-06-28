`timescale 1ns / 1ps

/*
Note: 
You must change the line 35 in traffic_controller.v as 
           >>parameter [26:0] COUNT_THRESHOLD = 27'd10
			  to observe the testbench 100ns to 100ns.
*/

module tb_traffic_controller();

    reg clk =0;
    reg rst;
    
    wire [2:0] w_to_e_tb;
    wire [2:0] w_to_n_tb;
    wire [2:0] e_to_w_tb;
    wire [2:0] e_to_n_tb;
    wire [2:0] n_to_e_tb;
    wire [2:0] n_to_w_tb;
    
    traffic_controller dut (
        .w_to_e(w_to_e_tb),
        .w_to_n(w_to_n_tb),
        .e_to_w(e_to_w_tb),
        .e_to_n(e_to_n_tb),
        .n_to_e(n_to_e_tb),
        .n_to_w(n_to_w_tb),
        .clk(clk),
        .rst(rst)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Reset assertion and de-assertion
    initial begin
        rst = 1;
        #10;
        rst = 0;
    end

    // Monitor the traffic light outputs
    always @(posedge clk) begin
        $display("Time = %0t: w_to_e = %b, w_to_n = %b, e_to_w = %b, e_to_n = %b, n_to_e = %b, n_to_w = %b",
                 $time, w_to_e_tb, w_to_n_tb, e_to_w_tb, e_to_n_tb, n_to_e_tb, n_to_w_tb);
    end

    // Stop simulation after some time (adjust as needed)
    initial begin
        #1000;
        $finish;
    end

endmodule
