`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 22:15:37
// Design Name: 
// Module Name: lab02_test
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


module lab02_test();
    reg en;
    reg [7:0] X;
    wire [6:0] F;
    exp2 t1(.en(en),
            .X(X),
            .F(F));
    initial
    begin
        en = 1'b0;  X = 8'b00000000; #10;
                    X = 8'b00000001; #10;
                    X = 8'b00000010; #10;
                    X = 8'b00000100; #10;
                    X = 8'b00001000; #10;
                    X = 8'b00010000; #10;
                    X = 8'b00100000; #10;
                    X = 8'b01000000; #10;
                    X = 8'b10000000; #10;
        en = 1'b1;  X = 8'b00000000; #10;
                    X = 8'b00000001; #10;
                    X = 8'b00000010; #10;
                    X = 8'b00000100; #10;
                    X = 8'b00001000; #10;
                    X = 8'b00010000; #10;
                    X = 8'b00100000; #10;
                    X = 8'b01000000; #10;
                    X = 8'b10000000; #10;
        end
endmodule
