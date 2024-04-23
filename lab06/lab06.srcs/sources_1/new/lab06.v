`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 10:32:18
// Design Name: 
// Module Name: lab06
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

//done
module shiftreg(
    input  [7:0]  din,
	input  clk,
	input  [2:0] func,
	input  lin,
	output reg [7:0] dout
);

    always @(posedge clk) 
        case(func)
            3'b000: dout = 8'b0;
            3'b001: dout = din;
            3'b010: dout = {1'b0, dout[7:1]};
            3'b011: dout = {dout[6:0], 1'b0};
            3'b100: dout = {dout[7], dout[7:1]};
            3'b101: dout = {lin, dout[7:1]};
            3'b110: dout = {dout[0], dout[7:1]};
            3'b111: dout = {dout[6:0], dout[7]};
        endcase
endmodule

module barrel(
    input [31:0] indata,
    input [4:0] shamt,
    input lr,           //left or right
	input al,           //algorithm or logical
	output reg [31:0] outdata
);
    wire [31:0] sol[4:0];
    assign sol[0] = shamt[0] ? (lr ? {indata[30:0], 1'b0} : (al ? {indata[31], indata[31:1]}: {1'b0, indata[31:1]})) : indata;
    assign sol[1] = shamt[1] ? (lr ? {sol[0][29:0], 2'b0} : (al ? {{2{sol[0][31]}}, sol[0][31:2]}: {2'b0, sol[0][31:2]})) : sol[0];
    assign sol[2] = shamt[2] ? (lr ? {sol[1][27:0], 4'b0} : (al ? {{4{sol[1][31]}}, sol[1][31:4]}: {4'b0, sol[1][31:4]})) : sol[1];
    assign sol[3] = shamt[3] ? (lr ? {sol[2][23:0], 8'b00} : (al ? {{8{sol[2][31]}}, sol[2][31:8]}: {8'b0, sol[2][31:8]})) : sol[2];
    assign sol[4] = shamt[4] ? (lr ? {sol[3][15:0], 16'b00} : (al ? {{16{sol[3][31]}}, sol[3][31:16]}: {16'b0, sol[3][31:16]})) : sol[3];
    
    always @(sol[4])
        outdata = sol[4];
endmodule

//done
module lfsr(input  [7:0]  seed,
	input  clk,
	input  load,
	output reg [7:0] dout
);

    wire lin;
    assign lin = dout[4] ^ dout[3] ^ dout[2] ^ dout[0];
    always @(posedge load)
        dout = seed;
    
    always @(posedge clk)
        if(!load) dout = {lin, dout[7:1]};
endmodule

