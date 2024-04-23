`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 20:23:22
// Design Name: 
// Module Name: lab02_led
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
    input [7:0] x,
    input en,
    output [6:0] F,
    output reg valid,
    output reg [3:0] bcd,
    output [7:0] AN
    );
   
    always @(x) begin
        if(en) begin
            casez(x)
                8'b1???????: begin bcd = 4'b0111; valid = 1; end
                8'b01??????: begin bcd = 4'b0110; valid = 1; end
                8'b001?????: begin bcd = 4'b0101; valid = 1; end
                8'b0001????: begin bcd = 4'b0100; valid = 1; end
                8'b00001???: begin bcd = 4'b0011; valid = 1; end
                8'b000001??: begin bcd = 4'b0010; valid = 1; end
                8'b0000001?: begin bcd = 4'b0001; valid = 1; end
                8'b00000001: begin bcd = 4'b0000; valid = 1; end
                8'b00000000: begin bcd = 4'b0000; valid = 0; end
            endcase
        end
        else 
            begin valid = 0; bcd = 4'b0000; end
    end
    
    wire [6:0] hex;
    bcd7seg decode(bcd, hex);
    
    assign F = (valid && en) ? hex : 7'b1111111;
    assign AN = 8'b11111110;
    
endmodule

module bcd7seg(
    input [3:0] b,
    output reg [6:0] h1
);
    always @(b) begin
        case(b)
            //reminder: the led bits is arranged in a backward manner in h1
            4'b0000: h1 = 7'b1000000;
            4'b0001: h1 = 7'b1111001;
            4'b0010: h1 = 7'b0100100;
            4'b0011: h1 = 7'b0110000;
            4'b0100: h1 = 7'b0011001;
            4'b0101: h1 = 7'b0010010;
            4'b0110: h1 = 7'b0000010;
            4'b0111: h1 = 7'b1111000;
            4'b1000: h1 = 7'b0000000;
            4'b1001: h1 = 7'b0010000;
            4'b1010: h1 = 7'b0001000;
            4'b1011: h1 = 7'b0000011;
            4'b1100: h1 = 7'b1000110;
            4'b1101: h1 = 7'b0100001;
            4'b1110: h1 = 7'b0000110;
            4'b1111: h1 = 7'b0001110;
        endcase
    end
endmodule