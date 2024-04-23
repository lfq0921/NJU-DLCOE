`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/18 20:09:45
// Design Name: 
// Module Name: lab05_seg
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

module sevenseg( input clk, input [7:0] en, input [31:0] digits, output [7:0] an, output [7:0] hex);
    reg [3:0] d;
    reg [2:0] s;
    wire [7:0] my_an;
    initial begin
    s= 3'b000;
    end
    
    always @(s)
        case (s)
          3'd0 : d = digits[3:0];
          3'd1 : d = digits[7:4];
          3'd2 : d = digits[11:8];
          3'd3 : d = digits[15:12];
          3'd4 : d = digits[19:16];
          3'd5 : d = digits[23:20];
          3'd6 : d = digits[27:24];
          3'd7 : d = digits[31:28];
       default:  d = 4'd0;
       endcase 
    always@(posedge clk)
        s<=s+1;
    decode38 dec(s, my_an);	 
    assign an=(en[s]==1'b1)?~my_an:8'hff;
    bcd7seg seg(d, hex);
endmodule

module decode38 (
    input [2:0] s,
    output reg [7:0] a
);
always @(s)
        case (s)
          3'b000 : a = 8'b00000001;
          3'b001 : a = 8'b00000010;
          3'b010 : a = 8'b00000100;
          3'b011 : a = 8'b00001000;
          3'b100 : a = 8'b00010000;
          3'b101 : a = 8'b00100000;
          3'b110 : a = 8'b01000000;
          3'b111 : a = 8'b10000000;
       default:  a = 8'b00000000;
       endcase 

endmodule

module bcd7seg(
	 input  [3:0] b,
	 output reg [7:0] h
	 );
    always @(*)
        case (b)
            4'b0000: h = 8'b11000000; //70H
            4'b0001: h = 8'b11111001; //79H
            4'b0010: h = 8'b10100100; //24H
            4'b0011: h = 8'b10110000; //30H
            4'b0100: h = 8'b10011001;
            4'b0101: h = 8'b10010010;
            4'b0110: h = 8'b10000010;
            4'b0111: h = 8'b11111000;
            4'b1000: h = 8'b10000000;
            4'b1001: h = 8'b10010000; //10H
            4'b1010: h = 8'b10001000;
            4'b1011: h = 8'b10000011;
            4'b1100: h = 8'b11000110;
            4'b1101: h = 8'b10100001;
            4'b1110: h = 8'b10000110;
            4'b1111: h = 8'b10001110;
       endcase 
	 
endmodule