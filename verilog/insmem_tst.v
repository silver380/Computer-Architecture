`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:07:53 06/28/2021
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
	integer i;

	// Instantiate the Unit Under Test (UUT)
	InsMem uut (
		.pc(pc), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		pc = 0;

		// Wait 100 ns for global reset to finish
		
		for(i=0;i<=4;i=i+1)
		begin
		pc = pc+1;
		#50;
		end;
		
		
        
		// Add stimulus here

	end
      
endmodule

