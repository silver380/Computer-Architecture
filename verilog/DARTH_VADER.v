`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:44:55 06/27/2021 
// Design Name: 
// Module Name:    DARTH_VADER 
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
module DARTH_VADER(
	input clk,
	output c
    );
	wire reg_dst, beq, reg_write, jump, alu_src, mem_to_reg, mem_read, mem_write;
	wire[1:0] alu_op;
	wire [3:0] opcode;
DATA_PATH dp(
	clk,reg_dst, beq, reg_write, jump, alu_src, mem_to_reg, mem_read, mem_write,
	alu_op,
	opcode
	);
CONTROL control(
	opcode,
	alu_op,
	reg_dst, beq, reg_write, jump, alu_src, mem_to_reg, mem_read, mem_write
	);
	assign c=~clk;
endmodule
