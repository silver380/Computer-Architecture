`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:27 06/24/2021 
// Design Name: 
// Module Name:    REGBank 
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
module REGBank(
	input rw,
	input reg[15:0] dataIn,
	input clk,
	input reg[3:0] nReg1,
	input reg[3:0] nReg2,
	input reg[3:0] dest,
	output reg[15:0] reg1out,
	output reg[15:0] reg2out
    );

	reg [15:0] reg_array [15:0];
	integer i;
	
	initial begin
	 for(i=0;i<16;i=i+1)
		reg_array[i] <= 16'd0;
	 end
	 
	 always @ (posedge clk ) begin
		if(rw) begin
		 reg_array[dest] <= dataIn;
		end
	 end
	 
	 assign reg1out = reg_array[nReg1];
	 assign reg2out = reg_array[nReg2];


endmodule
