`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 12:26:04 PM
// Design Name: 
// Module Name: simu_semisum
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


module simu_semisum();
    reg a,b;
    wire sum, cout;
    ha test(a, b, sum, cout);
    initial begin
        a = 0; b = 0;
        #20 a = 1; b = 0;
        #20 a = 0; b = 1;
        #20 a = 1; b = 1;
    end
endmodule
