`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2020 10:34:06 PM
// Design Name: 
// Module Name: ncount
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


module ncount #(parameter N=16) (
    input clk,
    input rst,
    output [1:0] msbs
    );
    
    wire [N-1:0] Q_next, Q_reg;
    assign Q_next = Q_reg +1;
    
    register #(.N(N)) my_reg(
    .clk(clk),
    .rst(rst),
    .en(1),
    .D(Q_next),
    .Q(Q_reg)
    );
   
   assign msbs = Q_reg[N-1:N-2];
   
endmodule
