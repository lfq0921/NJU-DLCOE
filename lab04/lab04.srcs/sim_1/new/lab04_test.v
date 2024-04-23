`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 21:40:05
// Design Name: 
// Module Name: lab04_test
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


module lab04_test(
    );
    reg CLK100MHZ;
    reg  SW;
    reg BTNC;
    
    wire [7:0] LED;
    wire [7:0] AN;
    wire [7:0] HEX;
    
    Timer u0(
    .SW(SW),
    .CLK100MHZ(CLK100MHZ),
    
    .BTNC(BTNC),
    .LED(LED),
    .AN(AN),
    .HEX(HEX)   );
    
    initial
    begin
        CLK100MHZ=1'b0;
        //CLK100MHZ = 100000000;#200
        BTNC = 0;
        
        SW = 0;
        forever
            #1 CLK100MHZ=~CLK100MHZ;//T=10
        end
        
endmodule
