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
module ALU(a,b, ALU_Result,c,sel
    );
	 input [15:0] a;
	 input [15:0] b;
	 input [1:0] sel;
	 output reg[15:0]  ALU_Result;
	 output c;
	 
	 always @(*)
    begin
        case(sel)
        16'b0000000000000000: // 0 Addition
           ALU_Result = a + b ; 
        16'b0000000000000001: // 1 Subtraction
           ALU_Result = a - b ;
        16'b0000000000000010: // 2 AND
           ALU_Result = a & b;
        16'b0000000000000011: // 3 OR
           ALU_Result = a | b;
       
        endcase
    end

endmodule
