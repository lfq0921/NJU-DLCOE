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


module lab01_test(

    );
    reg [1:0] X0;
    reg [1:0] X1;
    reg [1:0] X2;
    reg [1:0] X3;
    reg [1:0] Y;
    wire F;
    
    lab01 i1(
            .X0(X0),
            .X1(X1),
            .X2(X2),
            .X3(X3),
            .Y(Y));
    initial begin
        X0 = 2'b00; X1 = 2'b01; X2 = 2'b10; X3 = 2'b11; Y = 2'b00; #10;
       // Y = 2'b00; #10;
        Y = 2'b01; #10;
        Y = 2'b10; #10;
        Y = 2'b11; #10;
        $display("Running testbench");
        end
endmodule
