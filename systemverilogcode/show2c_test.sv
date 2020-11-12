`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 12:57:42 AM
// Design Name: 
// Module Name: show2c_test
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


module show2c_test();

reg [7:0] Din_t;
reg sign_t;
wire [15:0] Dout_t;

show2c dut (
    .Din(Din_t),
    .Dout(Dout_t),
    .sign(sign_t)
    );

initial begin
    Din_t=8'b00001000; #10
    Din_t=8'b10001000; #10
    Din_t=8'b01010101; #10
    Din_t=8'b11010101; #10
    
    $finish;
    end 

endmodule
