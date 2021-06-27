`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:45:20 06/24/2021 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(
    
	 input [15:0] a,
	 input [15:0] b,
	 input [1:0] sel,
	 output reg[15:0]  ALU_Result,
	 output c
	 );
	 always @(*)
    begin
        case(sel)
        2'b00: // 0 Addition
           ALU_Result = a + b ; 
        2'b01: // 1 Subtraction
           ALU_Result = a - b ;
        2'b10: // 2 AND
           ALU_Result = a & b;
        2'b11: // 3 OR
           ALU_Result = a | b;
       
        endcase
    end

endmodule
