`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:36:46 06/24/2021
// Design Name:   ADDER_2
// Module Name:   E:/UI/CA/verilog/project2/Group-K/verilog/adder2_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADDER_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder2_tst;

	// Inputs
	reg [15:0] aOO;
	reg [15:0] insMem;

	// Outputs
	wire [15:0] o;

	// Instantiate the Unit Under Test (UUT)
	ADDER_2 uut (
		.aOO(aOO), 
		.insMem(insMem), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		aOO = 3;
		insMem = 4;
		#100;
		aOO = 4;
		insMem = 5;
		#100;
		aOO = 6;
		insMem = 4;
		
        

	end
      
endmodule

