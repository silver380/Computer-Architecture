`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:47:21 06/27/2021
// Design Name:   DARTH_VADER
// Module Name:   E:/UI/CA/verilog/project2/Group-K/verilog/dv_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DARTH_VADER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dv_tst;

	// Inputs
	reg clk;

	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	DARTH_VADER uut (
		.clk(clk), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #160 clk = ~clk;
endmodule

