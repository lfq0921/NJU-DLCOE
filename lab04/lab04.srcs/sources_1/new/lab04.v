`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 15:23:47
// Design Name: 
// Module Name: lab04
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



module Timer(
    input CLK100MHZ,
    input SW,
    input BTNC,
    output LED_10,
    output [7:0] LED,
    output [7:0] AN,
    output [7:0] HEX,
    
    );
wire clk_1s, clk_10k;
wire rco1, rco2;
wire[3:0] q1, q2;  
clkgen #(1) myls_clk(CLK100MHZ, BTNC, SW, clk_1s);
clkgen #(10000) my10k_clk(CLK100MHZ, BTNC,1'b1, clk_10k);
counter i1 (
           .clk(clk_1s), .en(SW), .rst(BTNC), .cnt_limit(4'd10), .Q(q1), .rco(rco1)
);
counter i2 (
           .clk(rco1),
           .en(SW),
           .rst(BTNC),
           .cnt_limit(4'd6),
           .Q(q2),
           .rco(rco2)
);
sevenseg my_7seg(clk_10k, 8'h3, {24'b0, q2, q1}, AN, HEX);
assign LED[7:0] = {q2, q1};
assign LED_10 = clk_1s;
endmodule

module counter(
	input  clk,
	input  en,
	input  rst,
	input  [3:0] cnt_limit,
	output reg [3:0] Q,
	output reg rco
	);

// add your code here
initial  
begin   
   Q=4'd0;
   rco = 1'b0;
end
always@(posedge clk or posedge rst)
begin
    if(rst)
    begin   
        Q<=4'b0;
        rco <= 1'b0;
    end
    else
    if(en)
        begin
            if(Q ==cnt_limit-4'd1)
            begin
                Q<=4'd0;
                rco <= 1'b1;
            end
            else
            begin
                Q <= Q+4'd1;
                rco <= 1'b0;
            end
        end
        
    end
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
   //add your code here

endmodule

module bcd7seg(
	 input  [3:0] b,
	 output reg [7:0] h
	 );
    always @(*)
        case (b)
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
	 
endmodule
