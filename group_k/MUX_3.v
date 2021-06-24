`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:43:59 06/24/2021 
// Design Name: 
// Module Name:    MUX_3 
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
module MUX_3(
   input [15:0]a,
	input [15:0]b,
	input sel,
	output reg[15:0]o
    );
	 
	 always @ (*)
	 begin
		if(sel == 0)
			o=a;
		else
			o=b;
	 end


endmodule
