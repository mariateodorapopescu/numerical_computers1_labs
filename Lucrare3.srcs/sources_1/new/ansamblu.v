`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2023 08:17:26 AM
// Design Name: 
// Module Name: ansamblu
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


module ansamblu(
    input reset_0, pauza_0, clk_in_0,
    output [7:0] An,
    output [6:0] Seg,
    output DP_0, clk_out_led_0);
    
    wire clk_out_led_0;
    
    wire carry_out1;
    wire [5:0] valoare_bin1;
    numarator_59 num1(clk_out_led_0, reset_0, pauza_0, valoare_bin1, carry_out1);
    
    wire [5:0] valoare_bin2;
    numarator_59 num2(carry_out1, reset_0, pauza_0, valoare_bin2, carry_out2);
    
    wire [3:0] BCD0, BCD1, BCD2, BCD3;
    
    bin2bcd bin1(valoare_bin1, BCD2, BCD3);
    
    bin2bcd bin0(valoare_bin2, BCD0, BCD1);
    
    wire clk_out_seg;
    divizor_ceas div(clk_in_0, reset_0, clk_out_led_0, clk_out_seg);
    
    afisare_7seg afis(clk_out_seg, reset_0, BCD0, BCD1, BCD2, BCD3, An, Seg, DP_0);
    
endmodule
