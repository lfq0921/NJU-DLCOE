`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/16/2021 09:34:19 PM
// Design Name:
// Module Name: alu_tst
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


module alu_tst();
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] ALUctr;
    wire [3:0] F;
    wire cf;
    wire of;
    wire zero;
    
   alu_s i1(
    .A(A),
    .B(B),
    .ALUctr(ALUctr),
    .F(F),
    .cf(cf),
    .of(of),
    .zero(zero)
    );
    initial begin
        #10 begin A = 4'b1111; B = 4'b1000; ALUctr = 4'b0000;end
        #100 ALUctr = 4'b0010;
        #100 ALUctr = 4'b0011;
        #100 ALUctr = 4'b0110;
        #100 ALUctr = 4'b1000;
        #100 ALUctr = 4'b1111;
        #100 begin A = 4'b1000; B = 4'b1111; ALUctr = 4'b0010; end
        #100 ALUctr = 4'b0011;
        #100 ALUctr = 4'b1000;
    end
endmodule
