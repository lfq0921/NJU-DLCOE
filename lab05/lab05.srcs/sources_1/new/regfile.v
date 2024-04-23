`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 20:13:50
// Design Name: 
// Module Name: regfile
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


module regfile(
    input  [3:0]  ra,
	input  [3:0]  rw,
	input  [7:0] wrdata,
	input  regwr,
	input  wrclk,
	output [7:0] outa,
	output [7:0] outb
	);
     
	

	initial
	begin
	   $readmemh("D:/DigitalLab/lab05/mem1.txt", regs, 0, 15);
	end
	//The regfile
	reg [7:0] regs[15:0];	
	
	//add your code here
	assign out=(ra==8'b0)?8'b0:regs[ra];
    //assign out=(rb==8'b0)?8'b0:regs[rb];

    always@(posedge wrclk)
    begin
        if(regwr==1'b1) regs[rw] <= (rw == 3'b000)?8'b0:wrdata;
    end
endmodule

module connect(
    input   [3:0]  ra,
    //input  [3:0]  rb,
	input  [3:0]  rw,
	input  [7:0] wrdata,
	input  regwr,
	input  wrclk,
	output [7:0] outa,
	output [7:0] outa1,
	output [7:0] AN,
    output [7:0] HEX
	);
    clkgen #(10000) my10k_clk(wrclk, 1'b0,1'b1, clk_10k);
	blk_mem_gen_0 myram(.addra(wrdata),
	                    .clka(wrclk),
	                    .dina(ra),
	                    .douta(outa1),
	                    .ena(1'b1), 
	                    .wea(regwr));
    regfile my_regfile( .ra(ra),
                        //.rb(rb),
                        .rw(rw),
                        .wrdata(wrdata),
                        .regwr(regwr),
                        .wrclk(wrclk),
                        .outa(outa)
                        //.outb(outb)
                        );
    sevenseg my_7seg(clk_10k, 8'b00001111, {16'b0, outa, outa1}, AN, HEX);
         
    endmodule
    
    module sevenseg(
    input clk,
    input [7:0] en,
    input [31:0] digits,
    output [7:0] AN,
    output [7:0] HEX
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
assign AN=(en[s]==1'b1)?~my_an:8'hff;
bcd7seg seg(d,HEX);

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
	 
endmodule
