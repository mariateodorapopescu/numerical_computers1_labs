`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 11:44:52 AM
// Design Name: 
// Module Name: automat_cafea
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


module automat_cafea(clk, reset, b1, b5, b10, rest_1, rest_5, suc);
input b1, b5, b10, clk, reset;
output reg suc, rest_1, rest_5;

reg [2:0] state, next;

always @(posedge clk)
    begin
        if (~reset)
            state <= next;
        else
            state <= 3'b000;
    end
        
        
 always @(negedge clk)
    begin
        rest_1 = 0;
        rest_5 = 0;
        suc = 0;
    end
        
always @(state, b1, b5, b10)
    begin
        case(state)
            3'b00:begin
                if(b1)
                    next <= 3'b001;
                if(b5)
                    next <= 3'b100;
                if(b10)
                    next <= 3'b011;
            end
            3'b001:begin
                if(b1)
                    next <= 3'b010;
            end
            3'b010:begin
                if(b1)
                    next <= 3'b110;
            end
            3'b011:begin
                rest_5 <= 1;
                next <= 3'b100;
            end
            3'b100:begin
                rest_1 <= 1;
                next <= 3'b101;
            end
            3'b101:begin
                rest_1 <= 1;
                next <= 3'b110;
            end
            3'b110:begin
                suc <= 1;
                next <= 3'b000;
            end
            default:begin
                next <= 3'b000;
            end
        endcase
    end
endmodule