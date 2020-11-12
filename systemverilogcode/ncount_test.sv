`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2020 10:38:40 PM
// Design Name: 
// Module Name: ncount_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ncount_test();

reg clk_t;
reg rst_t;
wire [1:0] msbs_t;

ncount #(.N(4)) dut (
    .clk(clk_t),
    .rst(rst_t),
    .msbs(msbs_t)
    );
    
always begin
    clk_t = ~clk_t; #5;
    end 
    
initial begin
    clk_t=1'b0; rst_t=1'b0; #5
    rst_t=1'b1; #5
    rst_t=1'b0; 
    #200;
    $finish;
    end
    
    



endmodule
