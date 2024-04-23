`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 16:28:28
// Design Name: 
// Module Name: sevenseg
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

module sevenseg(
    input clk,
    input [7:0] en,
    input [31:0] digits,
    output [7:0] an,
    output [7:0] hex
    );
reg [3:0] d;
reg [2:0] s;
wire [7:0] my_an;
initial begin
s = 3'b000;
end
    
always@(s)
    case(s)
        3'd0:d=digits[3:0];
        3'd1:d=digits[7:4];
        3'd2:d=digits[11:8];
        3'd3:d=digits[15:12];
        3'd4:d=digits[19:16];
        3'd5:d=digits[23:20];
        3'd6:d=digits[27:24];
        3'd7:d=digits[31:28];
        default:d=4'd0;
        endcase
always@(posedge clk)
    s <= s + 1;
decode38 dec(s,my_an);
assign an=(en[s]==1'b1)?~my_an:8'hff;
bcd7seg seg(d,hex);

endmodule

