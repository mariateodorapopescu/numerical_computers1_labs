`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2023 08:24:10 AM
// Design Name: 
// Module Name: pipeline
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


module pipeline(a, b, c, d, e, f, load, clear, clk);
    
    input a, b, c , d, e, load, clear, clk;
    output f;
    
    wire[4:0] reg_in, reg_out;
    wire[4:0] res1, res2, res3, res4, res5; 
    assign reg_in[0] = a;
    assign reg_in[1] = b;
    assign reg_in[2] = c;
    assign reg_in[3] = d;
    assign reg_in[4] = e;
    
    ffd reg1(reg_out, reg_in, clear, load, clk);
    
    inmultire inmultire1(reg_out[0], reg_out[1], res1[0]);
    assign res1[1] = reg_out[2];
    inmultire inmultire2(reg_out[3], reg_out[4], res1[2]);
    
    ffd reg2(res2, res1, clear, load, clk);
    
    sum insumare1(res2[0], res2[1], res3[0]);
    assign res3[1] = res2[2];
    
    ffd reg3(res4, res3, clear, load, clk);
    
    scadere scazator(res4[0], res4[1], res5[0]);
    assign f = res5[0];
    
endmodule