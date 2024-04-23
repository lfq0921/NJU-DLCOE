`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/23 21:03:14
// Design Name: 
// Module Name: lab08_vga
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

//done, modify the coe file of blk_mem_gen_0 to change pictures
module vga_b(
    input CLK100MHZ,
    input [1:0] SW,        //for reset
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS);
    
    wire locked;
    wire vga_clk;
    wire [11:0] vga_data, vga_d;
    wire [9:0] h_addr, v_addr;
    wire valid;
    assign vga_data = valid ? vga_d : 12'b0;
    clk_wiz_0 my_vgaclk(.clk_in1(CLK100MHZ),.reset(SW[0]), .locked(locked),.clk_out1(vga_clk));
    vga_ctrl my_vgactrl(vga_clk, SW[0], vga_data, h_addr, v_addr, VGA_HS, VGA_VS, valid, VGA_R, VGA_G, VGA_B);
    blk_mem_gen_0 myram(.addra({h_addr, v_addr[8:0]}),.clka(CLK100MHZ),.dina(12'b0),.douta(vga_d),.ena(valid),.wea(1'b0));
endmodule

//original version, done
module vga_ctrl(
    input pclk,
    input reset,
    input [11:0] vga_data,
    output [9:0] h_addr, 
    output [9:0] v_addr,
    output hsync,
    output vsync,
    output valid, 
    output [3:0] vga_r, 
    output [3:0] vga_g,
    output [3:0] vga_b);

    parameter h_frontporch = 96;
    parameter h_active = 144;
    parameter h_backporch = 784;
    parameter h_total = 800;

    parameter v_frontporch = 2;
    parameter v_active = 35;
    parameter v_backporch = 515;
    parameter v_total = 525;

    reg [9:0] x_cnt = 10'b0;
    reg [9:0] y_cnt = 10'b0;
    wire h_valid;
    wire v_valid;

    always @(posedge reset or posedge pclk) 
        if (reset == 1'b1) x_cnt <= 1;
        else begin
            if (x_cnt == h_total) x_cnt <= 1;
            else x_cnt <= x_cnt + 10'd1;
        end

    always @(posedge pclk) 
        if (reset == 1'b1) y_cnt <= 1;
        else begin
            if (y_cnt == v_total & x_cnt == h_total)
            y_cnt <= 1;
            else if (x_cnt == h_total)
            y_cnt <= y_cnt + 10'd1;
        end
        
    assign hsync = (x_cnt > h_frontporch);
    assign vsync = (y_cnt > v_frontporch);

    assign h_valid = (x_cnt > h_active) & (x_cnt <= h_backporch);
    assign v_valid = (y_cnt > v_active) & (y_cnt <= v_backporch);
    assign valid = h_valid & v_valid;

    assign h_addr = h_valid ? (x_cnt - 10'd145) : {10{1'b0}};
    assign v_addr = v_valid ? (y_cnt - 10'd36) : {10{1'b0}};

    assign vga_r = vga_data[11:8];
    assign vga_g = vga_data[7:4];
    assign vga_b = vga_data[3:0];
endmodule

