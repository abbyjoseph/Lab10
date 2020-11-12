`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 12:50:39 AM
// Design Name: 
// Module Name: show2c
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


module show2c(
    input [7:0] Din,
    output reg [15:0] Dout,
    output sign
    );
    
    assign sign=Din[7];
    
    always @*
    if (Din[7])
        Dout <= ~{8'b11111111,Din} + 1'b1;
    else
        Dout <= {8'b0, Din};
        
   
        
endmodule
