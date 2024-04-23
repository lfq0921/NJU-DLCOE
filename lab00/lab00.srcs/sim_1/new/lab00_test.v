`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/23 15:40:35
// Design Name: 
// Module Name: lab00_test
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
`timescale 1 ns / 1 ps

module lab00_test(
   
    );
    reg A;
    reg B;
    wire F;
    
    lab00 i1 (
    .A(A),
    .B(B),
    .F(F)
    );
    initial
    begin
        A = 1'b0; B= 1'b0; #200;
        A = 1'b0; B= 1'b1; #200;
        A = 1'b1; B= 1'b0; #200;
        A = 1'b1; B= 1'b1; #200;
        A = 1'b0; B= 1'b0; #200;
    end
endmodule
