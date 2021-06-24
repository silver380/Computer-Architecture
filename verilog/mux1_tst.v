`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:30:19 06/24/2021
// Design Name:   MUX_1
// Module Name:   E:/UI/CA/verilog/project/group_k/mux1_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux1_tst;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg sel;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	MUX_1 uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		sel = 0;

		
		#100;
		a = 1;
		b = 0;
		sel = 0;

		
		#100;
		a = 0;
		b = 1;
		sel = 1;

		
		#100;
        
		// Add stimulus here

	end
      
endmodule

