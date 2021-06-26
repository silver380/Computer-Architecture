`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:24:08 06/27/2021
// Design Name:   REGBank
// Module Name:   E:/UI/CA/verilog/project2/Group-K/verilog/reg_bacnk_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: REGBank
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_bacnk_tst;

	// Inputs
	reg rw;
	reg [15:0] dataIn;
	reg clk;
	reg [3:0] nReg1;
	reg [3:0] nReg2;
	reg [3:0] dest;

	// Outputs
	wire [15:0] reg1out;
	wire [15:0] reg2out;

	// Instantiate the Unit Under Test (UUT)
	REGBank uut (
		.rw(rw), 
		.dataIn(dataIn), 
		.clk(clk), 
		.nReg1(nReg1), 
		.nReg2(nReg2), 
		.dest(dest), 
		.reg1out(reg1out), 
		.reg2out(reg2out)
	);

	initial begin
		// Initialize Inputs
		rw = 1;
		dataIn = 0;
		clk = 1;
		nReg1 = 0;
		nReg2 = 0;
		dest = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rw = 1;
		dataIn = 5;
		nReg1 = 2;
		nReg2 = 3;
		dest = 1;
		#100;
		rw = 1;
		dataIn = 6;
		nReg1 = 1;
		nReg2 = 1;
		dest = 1;

	end
	always #50 clk=~clk;
      
endmodule

