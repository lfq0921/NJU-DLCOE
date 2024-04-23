`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 21:53:57
// Design Name: 
// Module Name: lab03_test
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


module full_adder_t();
    reg a, b, cin;
    wire cout, s;
    
    full_adder test1(
        .a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .s(s)
        );
    initial begin
        a=1'b0; b=1'b0; cin=1'b0; #10;
                        cin=1'b1; #10;
                b=1'b1; cin=1'b0; #10;
                        cin=1'b1; #10;
        a=1'b1; b=1'b0; cin=1'b0; #10;
                        cin=1'b1; #10;
                b=1'b1; cin=1'b0; #10;
                        cin=1'b1; #10;
    end
endmodule

module adder_4_t();
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire cout;
    wire [3:0] s;
    
    adder_4 test2(
        .a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .s(s)
        );
    initial begin
        a=4'b0000; b=4'b0000; cin=1'b0; #10;
                        cin=1'b1; #10;
                b=4'b1001; cin=1'b0; #10;
                        cin=1'b1; #10;
        a=4'b1010; b=4'b1001; cin=1'b0; #10;
                        cin=1'b1; #10;
                b=4'b1100; cin=1'b0; #10;
                        cin=1'b1; #10;
    end
endmodule

module adder_8_test();
    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] s;
    wire overflow;
    wire carry;
    
    adder_8 test3(
        .a(a),
        .b(b),
        .s(s),
        .overflow(overflow),
        .carry(carry)
        );
        
    initial begin
        a=8'b00000000; b=8'b00001010; #10;
                       b=8'b10101111; #10;
        a=8'b10100000; b=8'b00001010; #10
                       b=8'b10101111; #10;
        a=8'b11111111; b=8'b01010101; #10;
                       b=8'b11111111; #10;
    end
endmodule

module addsub_test();
    reg [31:0] a;
    reg [31:0] b;
    reg sub;
    wire [31:0] s;
    wire zero, carry, overflow;
    
    addsub test4(a, b, sub, s, zero, carry, overflow);
    initial begin
        sub=0; a=32; b=0; #10;
                     b=23; #10;
               a=1023; b=0; #10;
                       b=23; #10;
        sub=1; a=32; b=0; #10;
               a=0; b=32; #10;
               a=0; b=-2147483648; #10;
               a=-3; b=-2147483648; #10;
     end
endmodule

module alu_test();
    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] aluctr;
    wire [6:0] s;
    wire zero, carry, overflow;
    
    alu test5(a, b, aluctr, s, zero, carry, overflow);
    
    initial begin
        aluctr = 3'b000; a = 4; b = 3; #10;
        aluctr = 3'b001; a = 4; b = 3; #10;
        aluctr = 3'b010; a = 10; b = 3; #10;
        aluctr = 3'b011; a = 4; b = 3; #10;
        aluctr = 3'b100; a = 4; b = 3; #10;
        aluctr = 3'b101; a = 4; b = 3; #10;
        aluctr = 3'b110; a = 4; b = 3; #10;
        aluctr = 3'b111; a = 4; b = 3; #10;
                         a = 7; b = 15; #10;
    end
endmodule

    /*task check;
        input [3:0] results; 
        input resultof, resultc, resultz; 
        begin
            if(s!=results) begin 
                $display("Error:x=%h,y=%h,ctrl=%b,s should be %h, get %h", inputa, inputb, inputaluop, results, s);
            end
        end
    endtask*/
