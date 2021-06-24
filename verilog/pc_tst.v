`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:28:36 06/24/2021
// Design Name:   PC
// Module Name:   E:/UI/CA/verilog/project/group_k/pc_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_tst;

	// Inputs
	reg [15:0] npc;
	reg clk;

	// Outputs
	wire [15:0] pc;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.npc(npc), 
		.clk(clk), 
		.pc(pc)
	);

	initial begin
		// Initialize Inputs
		npc = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		npc=1;
		#100;
		npc=0;
		#100;
		npc=1;
		#100
		npc=0;
        

	end
	
	always #100 clk= ~clk;
      
endmodule

