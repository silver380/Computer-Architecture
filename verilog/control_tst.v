`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:14:02 06/27/2021
// Design Name:   CONTROL
// Module Name:   E:/UI/CA/verilog/project2/Group-K/verilog/control_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CONTROL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_tst;

	// Inputs
	reg [3:0] opcode;

	// Outputs
	wire [1:0] alu_op;
	wire reg_dst;
	wire beq;
	wire reg_write;
	wire jump;
	wire alu_src;
	wire mem_to_reg;
	wire mem_read;
	wire mem_write;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	CONTROL uut (
		.opcode(opcode), 
		.alu_op(alu_op), 
		.reg_dst(reg_dst), 
		.beq(beq), 
		.reg_write(reg_write), 
		.jump(jump), 
		.alu_src(alu_src), 
		.mem_to_reg(mem_to_reg), 
		.mem_read(mem_read), 
		.mem_write(mem_write)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
       for(i=0;i<8;i=i+1)
		 begin
		 
		 opcode = opcode+1;
		 #100;
		 end
		// Add stimulus here
	end
      
endmodule

