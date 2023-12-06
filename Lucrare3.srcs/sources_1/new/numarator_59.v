`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 08:53:13 AM
// Design Name: 
// Module Name: numarator_59
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


module numarator_59(
    input clk_out_led, reset, pauza, 
    output [5:0]valoare_bin,
    output carry_out
    );
    reg [5:0]valoare_bin;
    reg carry_out;
    
    always @(posedge clk_out_led)
        if(!reset)
            begin
                valoare_bin = 0;
                carry_out = 0;
            end
        else if(!pauza)
            if(valoare_bin > 58)
                begin
                    valoare_bin = 0;
                    carry_out = carry_out + 1;
                end
            else
                begin 
                    valoare_bin = valoare_bin + 1;
                    carry_out = 0;
                end

endmodule
