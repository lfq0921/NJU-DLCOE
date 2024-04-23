`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/18 21:07:58
// Design Name: 
// Module Name: lab05_test
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


module lab05_test(
);
    reg clk;
    reg clr; 
    reg en_write;
    reg [3:0]read_addr;
    reg [3:0]write_addr;
    wire [7:0]read_data;
    reg [3:0]write_data;
    wire [7:0] AN;
    wire [7:0] HEX;
    
lab05 l1( .clk(clk),.clr(clr), .en_write(en_write), .read_addr(read_addr), .write_addr(write_addr),.read_data(read_data), .write_data(write_data),.AN(AN), .HEX(HEX) );
initial begin
en_write = 1'b1;
clr = 1'b0;
write_addr = 4'b0000;write_data = 4'b1000;read_addr = 4'b0010;
#1 read_addr = 4'b0010;
#2 write_addr = 4'b0011;
#4 read_addr = 4'b0011;
end
always
begin
       clk = 1;
	forever #10 clk = ~clk;
end

endmodule
