`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/24 14:49:59
// Design Name: 
// Module Name: lab08_test
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


module vga_t();
    reg CLK100MHZ;
    reg [1:0] SW;        //for reset
    wire [3:0] VGA_R;
    wire [3:0] VGA_G;
    wire [3:0] VGA_B;
    wire VGA_HS;
    wire VGA_VS;
    //wire vga_clk;
    //wire [11:0] p;
    vga_b my_vga_t(CLK100MHZ,SW, VGA_R,VGA_G,VGA_B,//vga_clk, p,
                                                    VGA_HS,VGA_VS);
     
    initial begin
        SW[0] = 1'b0; SW[1] = 1'b1;
        CLK100MHZ = 1'b0;
        forever begin
          #5 CLK100MHZ = ~CLK100MHZ; end
    end
endmodule