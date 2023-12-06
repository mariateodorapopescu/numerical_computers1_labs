`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 08:51:29 AM
// Design Name: 
// Module Name: simulare
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


module simulare();
reg clk, reset, b1, b5, b10;
wire suc, rest_1, rest_5; 

automat_cafea a(clk, reset, b1, b5, b10, rest_1, rest_5, suc);
initial begin
    b1 = 0; b5 = 0; b10 = 0;
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #5  b1 = 1; b5 = 0; b10 = 0;
    #25 b1 = 0; b5 = 0; b10 = 0; 
    #25 b1 = 0; b5 = 1; b10 = 0; 
    #5  b5 = 0;
    #45 b10 = 1;
    #5 b10 = 0;
    #40 $finish;
end

always #5 clk = ~clk;

endmodule
