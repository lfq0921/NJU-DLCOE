`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/12 17:13:43
// Design Name: 
// Module Name: lab04_seg
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

//module done
module bcd7seg(
    input [3:0] b,
    output reg [6:0] h1
    );
    always @(b) begin
        case(b)
            //reminder: the led bits is arranged in a backward manner in h1
            4'b0000: h1 = 7'b1000000; //70H
            4'b0001: h1 = 7'b1111001; //79H
            4'b0010: h1 = 7'b0100100; //24H
            4'b0011: h1 = 7'b0110000; //30H
            4'b0100: h1 = 7'b0011001;
            4'b0101: h1 = 7'b0010010;
            4'b0110: h1 = 7'b0000010;
            4'b0111: h1 = 7'b1111000;
            4'b1000: h1 = 7'b0000000;
            4'b1001: h1 = 7'b0010000; //10H
            4'b1010: h1 = 7'b0001000;
            4'b1011: h1 = 7'b0000011;
            4'b1100: h1 = 7'b1000110;
            4'b1101: h1 = 7'b0100001;
            4'b1110: h1 = 7'b0000110;
            4'b1111: h1 = 7'b0001110;
        endcase
    end
endmodule

module sevenseg(
    input clk,
    input [7:0] en,
    input wire [31:0] digits,
    output reg [7:0] AN,
    output [6:0] seg
);

    reg [3:0] d;  //which number to be display
    reg [2:0] s = 3'd000;

    bcd7seg my_seg(d, seg);
    always @(posedge clk) begin
        s <= s + 1;
        case(s)
            3'd0: begin AN <= (en[s] == 1'b1) ? 8'b11111110 : 8'hff; d <= digits[3:0]; end
            3'd1:  begin AN <= (en[s] == 1'b1) ? 8'b11111101 : 8'hff;d<=digits[7:4]; end
            3'd2: begin AN <= (en[s] == 1'b1) ? 8'b11111011 : 8'hff; d<=digits[11:8]; end
            3'd3: begin AN <= (en[s] == 1'b1) ? 8'b11110111 : 8'hff;d<=digits[15:12]; end
            3'd4: begin AN <= (en[s] == 1'b1) ? 8'b11101111 : 8'hff;d<=digits[19:16]; end
            3'd5: begin AN <= (en[s] == 1'b1) ? 8'b11011111 : 8'hff;d<=digits[23:20]; end
            3'd6: begin AN <= (en[s] == 1'b1) ? 8'b10111111 : 8'hff;d<=digits[27:24]; end
            3'd7: begin AN <= (en[s] == 1'b1) ? 8'b01111111 : 8'hff; d<=digits[31:28]; end
        endcase
    end
endmodule
