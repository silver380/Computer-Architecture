`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:46:17 06/24/2021 
// Design Name: 
// Module Name:    ADDER_2 
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
module ADDER_2(
		input [15:0] aOO,
		input [15:0] insMem,
		output reg[15:0] o
		
    );
	 always @ (*)
	 begin
	 o= aOO+insMem;
	 end
	 


endmodule
