`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 12:21:49 PM
// Design Name: 
// Module Name: semisumator_v1_PanaLuca
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


module ha(a, b, sum, cout);
    input a,b;
    output sum, cout;
    assign sum = a ^ b;
    assign cout = a & b;
endmodule
