`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:45 06/24/2021
// Design Name:   AND
// Module Name:   E:/UI/CA/verilog/project/group_k/AND_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AND_tst;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	AND uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		
		a = 0;
		b = 0;

		
		#100;
		
		a = 1;
		b = 1;

		
		#100;
		a = 0;
		b = 1;

		
		#100;
		a = 1;
		b = 0;

		
		#100;
        

	end
      
endmodule

