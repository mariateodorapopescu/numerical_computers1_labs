`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2023 08:29:06 AM
// Design Name: 
// Module Name: simulare_pipe
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


module simulare_pipe(
    );
    reg load, clk, reset, a, b, c, d, e;
    wire f;
    
    pipeline func(a, b, c, d, e, f, load, reset, clk);
    
    initial begin
//    clk = 0; load = 0; reset = 1; a = 0; b = 0; c = 0; d = 0; e = 0;
    clk = 0; reset = 0; load = 1; 
    #20 a = 1; b = 1; c = 0; d = 1; e = 0;
    #20 a = 1; b = 1; c = 0; d = 1; e = 1;
    #20 a = 0; b = 0; c = 1; d = 0; e = 0;
    #20 a = 0; b = 1; c = 1; d = 1; e = 1;
    #20 a = 1; b = 0; c = 1; d = 0; e = 0;
    #20 a = 1; b = 1; c = 0; d = 1; e = 1;
    #20 reset = 1;
    end

    always 
    #10 clk = !clk;
endmodule

