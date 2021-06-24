`timescale 1ns / 1ps
`include "Parameter.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:37:25 06/25/2021 
// Design Name: 
// Module Name:    InsMem 
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
module InsMem(
	input[15:0] pc,
	output[15:0] instruction
    );
	 
	 reg [`col - 1:0] memory [`row_i - 1:0];
	 wire [3 : 0] rom_addr = pc[4 : 1];
	 initial
	 
	 begin
	  $readmemh("./hex.txt", memory,0,14);
	 end
	 assign instruction =  memory[rom_addr];


endmodule
