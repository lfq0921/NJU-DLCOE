`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/07 01:05:32
// Design Name: 
// Module Name: lab11_mem
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

 module regfile(
    input  [4:0]  ra,
	input  [4:0]  rb,
	input  [4:0]  rw,
	input  [31:0] wrdata,
	input  regwe,
	input  wrclk,
	output [31:0] outa, outb
	);

	reg [31:0] regs[31:0];	
	reg [15:0] i;
    initial begin
        for(i = 0; i < 32; i = i + 1)
            regs[i] = 32'b0;
    end
    
    always @(posedge wrclk) begin
        if(regwe && rw)
            regs[rw] = wrdata;
    end

	assign outa = regs[ra];
    assign outb = regs[rb];
	
endmodule

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

module testmem (
    input [15:0] address,
    input clock,
    output reg [31:0] q
    );
    
    reg [31:0] ram[32767:0];
    always @(posedge clock) begin
        q = ram[address];
    end
endmodule