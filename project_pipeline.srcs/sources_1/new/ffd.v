`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 08:54:48 AM
// Design Name: 
// Module Name: ffd
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

module ffd(rout, rin, clear, load, clock);
    parameter Width = 8;
    output [Width-1:0] rout;
    reg [Width-1:0] rout;
    input [Width-1:0] rin;
    input clear, load, clock;
    always @ (posedge clock)
    if (clear)
        rout <= 0;
        else if (load)
    rout <= rin;
endmodule
