`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 20:39:39
// Design Name: 
// Module Name: lab02_ledtest
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


module lab02_ledtest();
    reg [7:0] in;
    reg en;
    wire [6:0] hex;
    wire [3:0] bcd;
    wire valid;
    wire [7:0] AN;
    
    exp2 test(in, en, hex, valid, bcd, AN);
    
    initial begin
        en = 0;
        in = 8'b10001000; #10;
        in = 8'b01001000; #10;
        en = 1;
        in = 8'b10001000; #10;
        in = 8'b01001000; #10;
        in = 8'b00100010; #10;
        in = 8'b00010000; #10;
    end
endmodule
