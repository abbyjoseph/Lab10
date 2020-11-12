`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2020 11:36:17 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper #(parameter N=16) (
    input clk,
    input btnC,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    wire [1:0] ncount_out;
    
    ncount #(.N(N)) my_ncount (
    .clk(clk),
    .rst(btnC),
    .msbs(ncount_out)
    );
    
   sseg4(
    .data(16'b0),
    .hex_dec(0),
    .sign(0),
    .digit_sel(ncount_out),
    .seg(seg),
    .dp(dp),
    .an(an)
    );
    
    
endmodule
