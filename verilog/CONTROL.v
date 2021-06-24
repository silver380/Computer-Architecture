`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:53 06/24/2021 
// Design Name: 
// Module Name:    CONTROL 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CONTROL(
		input[3:0] opcode,
      output reg[1:0] alu_op,
      output reg reg_dst, beq, reg_write, jump, alu_src, mem_to_reg, mem_read, mem_write
    );
	 
	 always @(*)
		begin
		 case(opcode)
		 4'b0000:  // add
			begin
			 reg_dst = 1'b1;
			 beq = 1'b0;
			 reg_write = 1'b1;
			 jump = 1'b0;
			 alu_src = 1'b1;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b00;   
			end
		 4'b0001:  // sub
			begin
			 reg_dst = 1'b1;
			 beq = 1'b0;
			 reg_write = 1'b1;
			 jump = 1'b0;
			 alu_src = 1'b1;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b01;   
			end
		 4'b0010:  // and
			begin
			 reg_dst = 1'b1;
			 beq = 1'b0;
			 reg_write = 1'b1;
			 jump = 1'b0;
			 alu_src = 1'b1;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b10;   
			end
		 4'b0011:  // or
			begin
			 reg_dst = 1'b1;
			 beq = 1'b0;
			 reg_write = 1'b1;
			 jump = 1'b0;
			 alu_src = 1'b1;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b11;  
			end
		 4'b0100:  // addi
			begin
			 reg_dst = 1'b0;
			 beq = 1'b0;
			 reg_write = 1'b1;
			 jump = 1'b0;
			 alu_src = 1'b1;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b00;   
			end
		 4'b0101:  // beg
			begin
			 reg_dst = 1'b0;
			 beq = 1'b1;
			 reg_write = 1'b0;
			 jump = 1'b0;
			 alu_src = 1'b1;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b01;    
			end
		 4'b0110:  // j
			begin
			 reg_dst = 1'b0;
			 beq = 1'b0;
			 reg_write = 1'b0;
			 jump = 1'b1;
			 alu_src = 1'b0;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b00;    
			end
		 4'b0110:  // j
			begin
			 reg_dst = 1'b0;
			 beq = 1'b0;
			 reg_write = 1'b0;
			 jump = 1'b1;
			 alu_src = 1'b0;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b0;
			 alu_op = 2'b00;    
			end
		 4'b0111:  // lw
			begin
			 reg_dst = 1'b0;
			 beq = 1'b0;
			 reg_write = 1'b1;
			 jump = 1'b0;
			 alu_src = 1'b0;
			 mem_to_reg = 1'b1;
			 mem_read = 1'b1;
			 mem_write = 1'b0;
			 alu_op = 2'b00;
			end
		4'b1000:  // sw
			begin
			 reg_dst = 1'b0;
			 beq = 1'b0;
			 reg_write = 1'b0;
			 jump = 1'b0;
			 alu_src = 1'b0;
			 mem_to_reg = 1'b0;
			 mem_read = 1'b0;
			 mem_write = 1'b1;
			 alu_op = 2'b00;
			end
		 endcase
	end


endmodule
