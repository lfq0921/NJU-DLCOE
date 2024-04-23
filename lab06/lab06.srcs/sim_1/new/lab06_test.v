`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 10:48:10
// Design Name: 
// Module Name: lab06_test
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


module shiftreg_t();
    reg [7:0]  din;
	reg clk;
	reg [2:0] func;
	reg lin;
	wire [7:0] dout;
	shiftreg my_sr(din, clk,func,lin,dout);
	
	initial begin
	   din = 8'b01010101; lin = 1;
	   func = 3'b000; #50 func = 3'b010; #50 func = 3'b011; #50 func = 3'b100; #50
	   func = 3'b101; #50 func = 3'b110; #50 func = 3'b111;
	end
	initial begin
	       clk = 0;
	       forever begin #10 clk = ~clk; end
	 end
endmodule


module barrel_t();
    reg [31:0] indata;
    reg [4:0] shamt;
    reg lr, al;         //algorithm or logical
	wire [31:0] outdata;
    
    barrel my_ba(indata, shamt, lr, al, outdata);
    initial begin
        indata = 32'b1010; lr = 1'b1; al = 1'b1;
        shamt = 5'b1; #20 shamt = 5'b10; #20 shamt = 5'b111;
    end
endmodule

module lfsr_t();
    reg  [7:0]  seed;
	reg  clk;
	reg  load;
	wire [7:0] dout;

    lfsr my_lfsr(seed, clk, load, dout);
    initial begin
        seed = 8'b1; #20 load = 1'b1; #15 load = 1'b0;
    end
    initial begin
        clk = 0;
        forever begin #10 clk = ~clk; end
    end
endmodule