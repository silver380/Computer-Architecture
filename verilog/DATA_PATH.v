`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:04 06/26/2021 
// Design Name: 
// Module Name:    DATA_PATH 
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
module DATA_PATH(
    input clk,
 //input jump,beq,mem_read,mem_write,alu_src,reg_dst,mem_to_reg,reg_write,bne,
 input reg_dst, beq, reg_write, jump, alu_src, mem_to_reg, mem_read, mem_write,
 input[1:0] alu_op,
 output[3:0] opcode
);
//wires
 wire [15:0]pc;
 wire [15:0]npc;
 wire [15:0]pcout;
 wire [31:0]insout;
 wire [15:0] a2o;
 wire [3:0] mux1o;
 wire [15:0]dataIn;
 wire [15:0] rgbo1;
 wire [15:0] rgbo2;
 wire [15:0] mux2o;
 wire [15:0] alu_res;
 wire c;
 wire ando;
 wire [15:0] mux3o;
 wire [15:0] dmo;
 //instance
 PC pc_1(npc,clk,pc);
 ADDER_1 adder1(pc,pcout);
 InsMem insmem(pc,insout);
 ADDER_2 adder2(pcout,insout[15:0],a2o);
 MUX_1 mux1(insout[23:20],insout[19:16],reg_dst,mux1o);
 REGBank rgb(reg_write,dataIn,clk,insout[27:24],insout[23:20],mux1o,rgbo1,rgbo2);
 MUX_2 mux2(insout[15:0],rgbo2,alu_src,mux2o);
 ALU alu(rgbo1,mux2o,alu_op,alu_res,c);
 AND and1(c,beq,ando);
 MUX_3 mux3(pcout,a2o,ando,mux3o);
 MUX_4 mux4(mux3o,insout[15:0],jump,npc);
 DataMem dm(clk,alu_res,rgbo2,mem_write,mem_read,dmo);
 MUX_5 mux5(alu_res,dmo,mem_to_reg,dataIn);
 assign opcdoe = insout[31:28];
endmodule
