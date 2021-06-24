`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:34:12 06/24/2021
// Design Name:   ADDER_1
// Module Name:   E:/UI/CA/verilog/project2/Group-K/verilog/adder1_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADDER_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder1_tst;

	// Inputs
	reg [15:0] pcIn;

	// Outputs
	wire [15:0] pcOut;

	// Instantiate the Unit Under Test (UUT)
	ADDER_1 uut (
		.pcIn(pcIn), 
		.pcOut(pcOut)
	);

	initial begin
		// Initialize Inputs
		pcIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		pcIn = 1;
		#100;
		pcIn=2;
		#100;
		pcIn=3;

	end
      
endmodule

