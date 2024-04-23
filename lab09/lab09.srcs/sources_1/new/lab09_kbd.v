`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/30 17:09:06
// Design Name: 
// Module Name: lab09_kbd
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

//11.11, done
module scancode_ram(
    input [7:0] cur_key,
    input caps, shiftf,
    output [7:0] ascii_key
);
    reg [7:0] ram1[8'hff:0];
    reg [7:0] ram2[8'hff:0];
    
    initial begin
        $readmemh("D:/CS/lab/lab07/rami.txt", ram1);
        $readmemh("D:/CS/lab/lab07/rami1.txt", ram2);
    end
    wire up, letter;
    assign letter = ram1[cur_key] >= 8'h61 && ram1[cur_key] <= 8'h7a;
    assign up = letter ? caps ^ shiftf : shiftf;
    assign ascii_key = (up) ? ram2[cur_key] : ram1[cur_key];
endmodule


