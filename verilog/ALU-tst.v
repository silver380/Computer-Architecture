`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:03:10 06/24/2021
// Design Name:   ALU
// Module Name:   E:/UI/CA/verilog/project/group_k/ALU-tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU-tst;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [1:0] sel;

	// Outputs
	wire [15:0] ALU_Result;
	wire c;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.ALU_Result(ALU_Result), 
		.c(c), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		a = 3;
		b = 2;
		sel = -1;
      for(i=0;i<4;i=i+1)
		begin
		sel=sel+ 2'b01;
		#50;
		end
	end
endmodule

