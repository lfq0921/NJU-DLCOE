`timescale 10 ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/25 21:10:55
// Design Name: 
// Module Name: lab01_test1
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
// input [1:0] X0,
//////////////////////////////////////////////////////////////////////////////////


module mux41_vlg_tst(

    );
    reg [1:0] X0;
    reg [1:0] X1;
    reg [1:0] X2;
    reg [1:0] X3;
    reg [1:0] Y;
    wire F;
    
    mux41 i1(
            .X0(X0),
            .X1(X1),
            .X2(X2),
            .X3(X3),
            .Y(Y));
    initial begin
        X0 = 0; X1 = 1; X2 = 1; X3 = 0; Y = 0; #10;
        Y = b01; #10;
        Y = b10; #10;
        Y = b11; #10;
        end
endmodule
