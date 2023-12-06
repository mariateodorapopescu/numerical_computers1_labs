`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 10:19:03 AM
// Design Name: 
// Module Name: sumator
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


module sumator(a,b,sum,cout);
    input a,b;
    output sum, cout;
    assign sum = a^b;
    assign cout= a&b;
endmodule
