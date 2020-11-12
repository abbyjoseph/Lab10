`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 08:28:35 AM
// Design Name: 
// Module Name: top_lab10
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


module top_lab10(
    input btnU,
    input btnD,
    input [15:0] sw,
    input clk,
    input btnC,
    output [6:0] seg,
    output [3:0] an,
    output [15:0] led
    );
    
    wire [15:0] lab9_out;
    wire [15:0] Dout_i;
    wire sign_i;
    wire [1:0] msbs_i;
    
    
    top_lab9 my_top_lab9 (
    .btnU(btnU),
    .btnD(btnD),
    .sw(sw[11:0]),
    .clk(clk),
    .btnC(btnC),
    .led(lab9_out)
    );
    
    assign led = lab9_out;
    
    show2c (
    .Din(lab9_out[15:8]),
    .Dout(Dout_i),
    .sign(sign_i)
    );
    
    ncount #(.N(21)) (
    .clk(clk),
    .rst(btnC),
    .msbs(msbs_i)
    );
    
    sseg4 (
    .data(Dout_i),
    .hex_dec(sw[15]),
    .sign(sign_i),
    .digit_sel(msbs_i),
    .seg(seg),
    .dp(dp),
    .an(an)
    );
    
endmodule
