`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:30:10 06/27/2021
// Design Name:   InsMem
// Module Name:   E:/UI/CA/verilog/project2/Group-K/verilog/insmem_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InsMem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module insmem_tst;

	// Inputs
	reg [15:0] pc;

	// Outputs
	wire [31:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	InsMem uut (
		.pc(pc), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		pc=1;
		#100;
		pc=2;
        
		// Add stimulus here

	end
      
endmodule

