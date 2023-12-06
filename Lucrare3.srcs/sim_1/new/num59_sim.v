`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 09:07:03 AM
// Design Name: 
// Module Name: num59_sim
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


module num59_sim(
    
    );
    reg clk_out_led, reset, pauza;
    wire [5:0]valoare_bin;
    wire carry_out;
    
    numarator_59 test(clk_out_led, reset, pauza, valoare_bin, carry_out);
    initial begin
        clk_out_led = 0;
        reset = 1;
        pauza = 0;
        #20 reset = 0;
        #60 pauza = 1;
        #20 pauza = 0;
    end
    
    always 
        #10 clk_out_led = !clk_out_led;
endmodule
