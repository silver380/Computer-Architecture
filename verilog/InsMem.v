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
	output[31:0] instruction
    );
	 
	 reg [31:0] memory [15:0];
	 wire [3 : 0] rom_addr = pc[4 : 1];
	 initial
	 
	 begin
	  //$readmemh("./h.hex", memory,0,14);
	  memory[0] = 32'b1000001000111110000000000000000;
	  memory[1] = 32'b1000010001011110000000000000001;
	  
	 end
	 assign instruction =  memory[rom_addr];
	 


endmodule
