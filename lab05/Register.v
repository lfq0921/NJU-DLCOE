`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 22:54:23
// Design Name: zxy
// Module Name: Register
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

module lab05(clk, clr, en_write, read_addr, write_addr, read_data, write_data, AN, HEX);
  input en_write, clr, clk;//写控制信号 清零
  parameter ADDR = 4;//地址位宽
  parameter NUMB = 1<<ADDR;//个数
  parameter SIZE = 8;//数据位宽
  input [ADDR-1:0]read_addr;//读 地址
  input [ADDR-1:0]write_addr;//写 地址
  input [3:0]write_data;
  output [SIZE-1:0]read_data;//端口读出数据
  output [7:0] AN;
  output [7:0] HEX;
  wire clk_10k;
  wire [SIZE-1:0] reg_read_data, ram_read_data;
  clkgen #(10000) my10k_clk(clk, 1'b0,1'b1, clk_10k);
  
  Register myreg( .load(en_write), .clk(clk), .clr(clr),.read_addr(read_addr), .write_addr(write_addr),.read_data(reg_read_data),.write_data({4'd0, write_data}));
  
  blk_mem_gen_0 myram(
                        .addra(write_addr),
                        .clka(clk),
                        .dina({4'd0, write_data}),
                        .douta(ram_read_data),
                        .ena(1'b1),
                        .wea({0,en_write})); //写入低四位
                        
  sevenseg my_7seg(clk_10k, 8'b11111111, {8'b0, ram_read_data, 8'b0, reg_read_data}, AN, HEX);
  assign read_data = reg_read_data;           
endmodule


module Register(load, clk, clr, read_addr,write_addr, read_data, write_data);
  input load,clr,clk;//写控制信号 清零
  parameter ADDR = 4;//寄存器编码/地址位宽
  parameter NUMB = 1<<ADDR;//寄存器个数
  parameter SIZE = 8;//寄存器数据位宽
  input [ADDR-1:0]read_addr;//读寄存器地址
  input [ADDR-1:0]write_addr;//写寄存器地址
  input [SIZE-1:0]write_data;
  output [SIZE-1:0]read_data;//端口读出数据

  reg [SIZE-1:0]REG_Files[NUMB-1:0];//寄存器堆
 
  integer i;//用于遍历NUMB个寄存器
  initial//初始化NUMB个寄存器，全为0
  begin
  $readmemh("E:/digital_logic/lab/lab05/register.txt", REG_Files, 0, NUMB-1);
  end
  always @(posedge clk)
  begin
  if (clr==1)
    for(i = 0; i < NUMB; i = i + 1) 
      REG_Files[i] <= 0;
  else if (load == 1)
    REG_Files[write_addr] <= write_data;
   end
assign read_data = REG_Files[read_addr];
endmodule


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
          4'd15 : h = 8'b10001110;
          4'd14 : h = 8'b10000110;
          4'd13 : h = 8'b10100001;
          4'd12 : h = 8'b11000110;
          4'd11 : h = 8'b10000011;
          4'd10 : h = 8'b10001000;
          4'd9 : h = 8'b10010000;
          4'd8 : h = 8'b10000000;
          4'd7 : h = 8'b11111000;
          4'd6 : h = 8'b10000010;
          4'd5 : h = 8'b10010010;
          4'd4 : h = 8'b10011001;
          4'd3 : h = 8'b10110000;
          4'd2 : h = 8'b10100100;
          4'd1 : h = 8'b11111001;
          4'd0 : h = 8'b11000000;
       default:  h = 8'b11111111;
       endcase 
   //add your code here
	 
endmodule


module clkgen(
    input clkin, 
    input rst,  
    input clken,
    output reg clkout
    //output reg [31:0] clkcount
);
parameter clk_freq=1000;
parameter countlimit=100000000/2/clk_freq-1;
reg [31:0] clkcount;
initial begin
clkcount = 32'd0;
clkout = 1'b0;
end
always @ (posedge clkin) 
   
    if(rst)  begin
      clkcount<=0;
      clkout<=1'b0;
      end
     else begin
      if(clken) begin
        if(clkcount>=countlimit)begin
            clkcount<=32'd0;
            clkout<=~clkout;
        end
        else begin
            clkcount<=clkcount+1;
            end
       end
    end
endmodule