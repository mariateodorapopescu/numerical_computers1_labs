`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2023 11:05:12 AM
// Design Name: 
// Module Name: registru
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


module registru(d, ce, clr, clk, q);
    input ce, clr, clk;
    input [4:0] d;
    output [4:0] q;
    reg [4:0] q;
    always @ (clr)
     q <= 0;
    always @ (posedge clk)
    begin
     if (ce)
     q <= d;
    end   
endmodule
