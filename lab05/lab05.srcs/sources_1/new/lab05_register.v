`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/18 15:00:57
// Design Name: 
// Module Name: lab05_register
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
module register1(load,clk,clr,inp,q);
    input load,clr,clk,inp;
    output reg q;           
    //q started with unknown value X
    
    always @(posedge clk)
        if (clr == 1) q <= 0;
        else if (load == 1) q <= inp;
endmodule

//done
module register4(load,clk,clr,d,q);
    input load,clr,clk;
    input [3:0] d;
    output reg [3:0] q;
    
    always @(posedge clk)
        if (clr == 1) q <= 0;
        else if (load == 1) q <= d;
endmodule

module reg_file(clk, we, inaddr, outaddr, din, dout);
    input clk;
    input we;
    input [3:0] inaddr;
    input [3:0] outaddr;
    input [7:0] din;
    output [7:0] dout;

    reg [7:0] ram [15:0];
    initial begin
        $readmemh("D:/CS/lab/lab05/meml.txt", ram, 0, 15);
    end
    
    always @(posedge clk) begin
        if(we && inaddr) ram[inaddr] = din;
    end
    assign dout = ram[outaddr];
endmodule

module board(clk, we, inaddr, outaddr, din, AN, hex);
    input clk;
    input we;
    input [3:0] inaddr;
    input [3:0] outaddr;
    input [7:0] din;
    output [7:0] AN;
    output [7:0] hex;
    
    wire [7:0] rf_out, ram_out;
    wire clk_5khz;
    clkgen #(5000) my_5khz(clk, 1'b0, 1'b1, clk_5khz);
    blk_mem_gen_1 my_ram(.addra(inaddr), .clka(clk), .dina(din), .douta(ram_out), .ena(1'b1), .wea(we));
    reg_file my_rf(clk, we, inaddr, outaddr, din, rf_out);
    sevenseg my7seg(clk_5khz, 8'b00000011, {24'b0, ram_out[3:0], rf_out[3:0]}, AN, hex);
endmodule