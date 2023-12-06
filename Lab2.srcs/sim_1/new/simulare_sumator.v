`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 10:23:19 AM
// Design Name: 
// Module Name: simulare_sumator
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

module simulare_sumator( );
    //etapa 1 -> declaratii
    reg a,b; //declaratie intrari
    wire sum,cout; //declaratie iesiri
    
    //etapa 2 -> instantieri
    sumator test(a,b,sum,cout); //se pastreaza ordinea parametrilor
    
    //etapa 3 -> initializare valori
    initial begin
    a = 0;
    b = 0;
    
    //# - intarziere 
    #20 a = 1; b = 0;
    #20 a = 0; b = 1;
    #20 a = 1; b = 1;
    
    end
   
endmodule
