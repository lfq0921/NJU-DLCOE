`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/25 11:59:10
// Design Name: 
// Module Name: vga_test
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


module vga_test(

    );
    reg CLK100MHZ;
    reg SW; //for reset??? 
    wire [3:0] VGA_R; 
    wire [3:0] VGA_G;
    wire [3:0] VGA_B;
    wire VGA_HS;
    wire VGA_VS;


vga_gen i1(
    .CLK100MHZ(CLK100MHZ),
    .SW(SW),
    .VGA_R(VGA_R),
    .VGA_G(VGA_G),
    .VGA_B(VGA_B),
    .VGA_HS(VGA_HS),
    .VGA_VS(VGA_VS)
    );
    initial begin
        CLK100MHZ = 1;
        forever #1 CLK100MHZ = ~CLK100MHZ;
    end
    initial
    begin
        SW=0'b0;
        
    end
endmodule
