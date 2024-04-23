`timescale 1ns / 1ps


//oj1 passed, origin version
module alu(
	input [31:0] dataa,
	input [31:0] datab,
	input [3:0]  ALUctr,
	output less,
	output zero,
	output reg [31:0] aluresult);

    wire cf, of;
    wire [31:0] addresult, shiftresult;
    wire lr, al;
    adder my_adder(dataa, datab, |ALUctr, addresult, cf, of);
    barrel my_shift(dataa, datab[4:0], lr, al, shiftresult);

    always @(*)
        case(ALUctr[2:0])
            3'b000: begin aluresult = addresult; end
            3'b001: begin aluresult = shiftresult; end
            3'b010: begin aluresult = {31'b0, less}; end
            3'b011: begin aluresult = datab; end
            3'b100: begin aluresult = dataa ^ datab; end
            3'b101: begin aluresult = shiftresult; end
            3'b110: begin aluresult = dataa | datab; end
            3'b111: begin aluresult = dataa & datab; end
        endcase

    assign lr = ~ALUctr[2];
    assign al = ALUctr[3];
    assign zero = ALUctr[2:0] == 3'b010 ? ~|addresult : ~(|aluresult);
    assign less = ALUctr[3] ? cf : (dataa[31] == datab[31] ? addresult[31] : dataa[31]);
endmodule

module adder(
	input  [31:0] A,
	input  [31:0] B,
	input  sub,
	output [31:0] f,
	output cf,
	output of
	);
    
    wire [31:0] t_no_sub = {32{sub}} ^ B;
    assign f = A + t_no_sub + sub;
    
    assign cf = ((A + t_no_sub + sub) >= {1'b1, 32'b0} ) ^ sub;
    assign of = (A[31] == t_no_sub[31]) && (A[31] != f[31]);
endmodule

module barrel(input [31:0] indata,
			  input [4:0] shamt,
			  input lr,  //1 for let
			  input al,  //1 for algorithm
			  output reg [31:0] outdata);

    wire [31:0] sol[4:0];
    assign sol[0] = shamt[0] ? (lr ? {indata[30:0], 1'b0} : (al ? {indata[31], indata[31:1]}: {1'b0, indata[31:1]})) : indata;
    assign sol[1] = shamt[1] ? (lr ? {sol[0][29:0], 2'b0} : (al ? {{2{sol[0][31]}}, sol[0][31:2]}: {2'b0, sol[0][31:2]})) : sol[0];
    assign sol[2] = shamt[2] ? (lr ? {sol[1][27:0], 4'b0} : (al ? {{4{sol[1][31]}}, sol[1][31:4]}: {4'b0, sol[1][31:4]})) : sol[1];
    assign sol[3] = shamt[3] ? (lr ? {sol[2][23:0], 8'b00} : (al ? {{8{sol[2][31]}}, sol[2][31:8]}: {8'b0, sol[2][31:8]})) : sol[2];
    assign sol[4] = shamt[4] ? (lr ? {sol[3][15:0], 16'b00} : (al ? {{16{sol[3][31]}}, sol[3][31:16]}: {16'b0, sol[3][31:16]})) : sol[3];
    
    always @(sol[4])
        outdata = sol[4];
endmodule


//oj2 passed, origin version
module dmem(
	input  [31:0] addr,
	output reg [31:0] dataout,
	input  [31:0] datain,
	input  rdclk,
	input  wrclk,
	input [2:0] memop,
	input we);

    reg [31:0] mem[32767:0];  //2^15
    reg [31:0] data1;

    always @(posedge rdclk) begin
        data1 = mem[addr[14:2]];
        case(memop)
            3'b000: 
                case(addr[1:0])
                    2'b00: dataout = {{24{data1[7]}}, data1[7:0]};
                    2'b01: dataout = {{24{data1[15]}}, data1[15:8]};
                    2'b10: dataout = {{24{data1[23]}}, data1[23:16]};
                    2'b11: dataout = {{24{data1[31]}}, data1[31:24]};
                endcase
            3'b001: 
                case(addr[1])
                    1'b0: dataout = {{16{data1[15]}}, data1[15:0]};
                    1'b1: dataout = {{16{data1[31]}}, data1[31:16]};
                endcase
            3'b010: dataout = data1;
            3'b100: 
                case(addr[1:0])
                    2'b00: dataout = {24'b0, data1[7:0]};
                    2'b01: dataout = {24'b0, data1[15:8]};
                    2'b10: dataout = {24'b0, data1[23:16]};
                    2'b11: dataout = {24'b0, data1[31:24]};
                endcase
            3'b101:
                case(addr[1])
                    1'b0: dataout = {16'b0, data1[15:0]};
                    1'b1: dataout = {16'b0, data1[31:16]};
                endcase
        endcase
    end

    always @(posedge wrclk)
        if(we) begin
            case(memop)
                3'b000: 
                    case(addr[1:0])
                        2'b00: mem[addr[14:2]][7:0] = datain[7:0];
                        2'b01: mem[addr[14:2]][15:8] = datain[7:0];
                        2'b10: mem[addr[14:2]][23:16] = datain[7:0];
                        2'b11: mem[addr[14:2]][31:24] = datain[7:0];
                    endcase
                3'b001: 
                    case(addr[1])
                        1'b0: mem[addr[14:2]][15:0] = datain[15:0];
                        1'b1: mem[addr[14:2]][31:16] = datain[15:0];
                    endcase
                3'b010: mem[addr[14:2]] = datain;
            endcase
        end
endmodule