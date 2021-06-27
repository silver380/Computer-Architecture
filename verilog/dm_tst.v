`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:42:32 06/27/2021
// Design Name:   DataMem
// Module Name:   E:/UI/CA/verilog/project2/Group-K/verilog/dm_tst.v
// Project Name:  group_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dm_tst;

	// Inputs
	reg clk;
	reg [15:0] mem_access_addr;
	reg [15:0] mem_write_data;
	reg mem_write_en;
	reg mem_read;

	// Outputs
	wire [15:0] mem_read_data;

	// Instantiate the Unit Under Test (UUT)
	DataMem uut (
		.clk(clk), 
		.mem_access_addr(mem_access_addr), 
		.mem_write_data(mem_write_data), 
		.mem_write_en(mem_write_en), 
		.mem_read(mem_read), 
		.mem_read_data(mem_read_data)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		mem_access_addr = 0;
		mem_write_data = 0;
		mem_write_en = 0;
		mem_read = 0;

		
		#100;
		
		mem_access_addr = 1;
		mem_write_data = 2;
		mem_write_en = 1;
		mem_read = 0;

		
		#100;

		mem_access_addr = 1;
		mem_write_data = 0;
		mem_write_en = 0;
		mem_read = 1;

		
		#100;
        
		// Add stimulus here

	end
	always #50 clk = ~clk; 
      
endmodule

