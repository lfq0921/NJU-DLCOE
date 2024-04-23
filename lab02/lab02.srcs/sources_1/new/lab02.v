//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 22:08:55
// Design Name: 
// Module Name: lab02
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


module exp2(
	input  [7:0] X,
	input  en,
	//output reg valid,
	output reg [7:0] F,
	output reg [7:0]AN
	);

    //add your code here
    always @ (X or en)
        if (en) begin
            //valid = 1;
            AN = 8'b11111110;
       
            casez (X)
                8'b1??????? : F = 8'b11111000;//7
                8'b01?????? : F = 8'b10000010;//6
                8'b001????? : F = 8'b10010010;//5
                8'b0001???? : F = 8'b10011001;//4
                8'b00001??? : F = 8'b10110000;//4
                8'b000001?? : F = 8'b10100100;//3
                8'b0000001? : F = 8'b11111001;//2
                8'b00000001 : F = 8'b11000000;//0
                8'b00000000 : F = 8'b11111111;
                default : F = 8'b11111111;
            endcase
        end       
        else begin F = 8'b11111111;/*valid = 0;*/AN = 8'b11111110;
        end
endmodule


//module bcd7seg(
	// input  [3:0] b,
//	 output reg [6:0] h
//	 );

   //add your code here
 //  always@(b)
  // begin
   // case(b)
     //   4'b0000: h = 7'b1000000;   //0
       // 4'b0001: h = 7'b1111001;    //1
  //      4'b0010: h = 7'b0100100;    //2
  //      4'b0011: h = 7'b0110000;    //3
  //      4'b0100: h = 7'b0011001;    //4
  //      4'b0101: h = 7'b0010010;    //5
  //      4'b0110: h = 7'b0000010;    //6
  //      4'b0111: h = 7'b1111000;    //7
   //     4'b1000: h = 7'b0000000;    //8
   //     4'b1001: h = 7'b0010000;    //9
    //    4'b1010: h = 7'b0001000;    //A
    //    4'b1011: h = 7'b0000011;    //B
    //    4'b1100: h = 7'b1000110;    //C
    //    4'b1101: h = 7'b0100001;    //D
    //    4'b1110: h = 7'b0000110;    //E
    //    4'b1111: h = 7'b0001110;    //F
    //    default : h = 7'b1111111;
   // endcase
  //  end
//endmodule
