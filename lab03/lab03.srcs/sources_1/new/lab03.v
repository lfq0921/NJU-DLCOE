`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/07 12:01:50
// Design Name: 
// Module Name: lab03
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


module alu_s( input [3:0] A,
			  input [3:0] B,
			  input [2:0] ALUctr,
			  output reg [3:0] F,
			  output reg cf,
			  output reg zero,
			  output reg of
);

//add your code here
//wire [3:0] b_in;
//wire carry;
wire [3:0] a_out;
wire acf, aof, azero;
wire lg;
adder madder(A,B,|ALUctr, a_out, acf, azero, aof);

assign lg = (A[3] == 1'b0&B[3]==1'b1) | (aof==1'b0&a_out[3]==1'b0&~azero);

   always@(*)
   begin
     case(ALUctr)
        3'd0: begin F=a_out;cf=acf;zero=azero;of=aof;end
        3'd1: begin F=a_out;cf=acf;zero=azero;of=aof;end
        3'd2: begin F=~A;cf=1'b0;zero=|F;of=1'b0;end
        3'd3: begin F=A&B;cf=1'b0;zero=|F;of=1'b0;end
        3'd4: begin F=A|B;cf=1'b0;zero=|F;of=1'b0;end
        3'd5: begin F=A^B;cf=1'b0;zero=|F;of=1'b0;end
        3'd6: begin F={3'b0,lg};cf=1'b0;zero=|F;of=1'b0;end
        3'd7: begin F={3'b0,azero};cf=1'b0;zero=|F;of=1'b0;end
        endcase
      end
      
      endmodule
      
      module adder(
            input [3:0] A,
            input [3:0] B,
            input addsub,
            output [3:0] F,
            output cf,
            output zero,
            output of
            );
            
            wire[3:0] b_in;
            wire carry;
            assign b_in ={4{addsub}} ^ B;
            assign {carry,F} = A + b_in +{3'b0,addsub};
            assign cf = carry^addsub;
            assign of = (A[3]^~b_in[3]) & (F[3] ^ A[3]);
            assign zero = ~(|F);
      endmodule
        
       /* if (ALUctr == 3'b000 || ALUctr == 3'b001)
        begin
            reg [3:0] b_in;
            reg carry;
            reg addsub;
            addsub = ALUctr[0];
            b_in ={4{addsub}} ^ B;
            {carry,F} = A + b_in +{3'b0,addsub};
            cf = carry^addsub;
            of = (A[3]^~b_in[3]) & (F[3] ^ A[3]);
            zero = ~(|F);
        end
        else 
        begin
        case(ALUctr)
            3'b010 : F = ~A;
            3'b011 : F = A&B;
            3'b100 : F = A|B;
            3'b101 : F = A^B;
            3'b110 : begin 
                if (A[3] == 1 && B[3] == 0) F = 4'b0000;
                if (A[3] == 0 && B[3] == 1) F = 4'b0001;
                if (A[3] == 1 && B[3] == 1 && A < B) F = 4'b0000;
                if (A[3] == 1 && B[3] == 1 && A > B) F = 4'b0001;
                if (A[3] == 0 && B[3] == 0 && A > B) F = 4'b0001;
                if (A[3] == 0 && B[3] == 0 && A <= B) F = 4'b0000;
            end
            3'b111 : begin
                if(A == B) F = 4'b0001;
                else F = 4'b0000;
            end
        endcase
        assign cf = 0;
        assign of = 0;
        assign zero = 0;
        end
end
endmodule*/
