`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/07 00:36:29
// Design Name: 
// Module Name: lab10_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module alu_t();
	reg [31:0] dataa;
	reg [31:0] datab;
	reg [3:0]  ALUctr;
	wire less;
	wire zero;
	wire [31:0] aluresult;
	
    alu my_alu(
dataa,
 datab,
 ALUctr,
 less,
 zero,
 aluresult);

    initial begin
        dataa = 32'b1011; datab = 32'b0110;
        ALUctr = 4'b0000; #5 //add
        ALUctr = 4'b1000; #5 //minus
        ALUctr = 4'b0001; #5 //left shift
        ALUctr = 4'b1010; #5 //less than
        ALUctr = 4'b0110;    //or
    end
endmodule

module dmem_t();
	reg  [31:0] addr;
	wire [31:0] dataout;
	reg  [31:0] datain;
	reg  rdclk;
	reg  wrclk;
	reg [2:0] memop;
	reg we;
	
	dmem my_mem(addr, dataout, datain, rdclk, wrclk, memop, we);
	initial begin
	   rdclk = 1'b0; wrclk = 1'b0; we = 1'b0;
	   addr = 32'h000f0000; 
	   memop = 3'b000; datain = 32'hffffffff; #10
	   wrclk = 1'b1; #10 wrclk = 1'b0; #10
	   rdclk = 1'b1; #10 rdclk = 1'b0; #10
	   we = 1'b1;
	   wrclk = 1'b1; #10 wrclk = 1'b0; #10
	   rdclk = 1'b1; #10 rdclk = 1'b0;
	end
	
endmodule