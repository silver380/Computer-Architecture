`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:27:11 06/24/2021
// Design Name:   MUX_5
// Module Name:   E:/UI/CA/verilog/project/group_k/mux5_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux5_tst;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg sel;

	// Outputs
	wire [15:0] o;

	// Instantiate the Unit Under Test (UUT)
	MUX_5 uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.o(o)
	);

	initial begin
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

	end
      
endmodule

