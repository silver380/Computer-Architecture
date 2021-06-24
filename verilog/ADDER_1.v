`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:46:02 06/24/2021 
// Design Name: 
// Module Name:    ADDER_1 
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
module ADDER_1(
	input [15:0]pcIn,
	output reg[15:0] pcOut
    );
	 always @ (*)
	 begin
	 pcOut= pcIn+4;
	 end
	


endmodule
