`timescale 1ns / 1ps

module rv32is(
	input 	clock,  //neg for cpu
	input 	reset,  //1 for reset
	output [31:0] imemaddr,   //just for oj, some may be modified to be reg/wire later
	input  [31:0] imemdataout,  
	output 	imemclk,  			//read in pose
	output [31:0] dmemaddr,
	input  [31:0] dmemdataout,  
	output [31:0] dmemdatain,
	output 	dmemrdclk, //read in pose
	output	dmemwrclk, //write in pose
	output [2:0] dmemop,
	output	dmemwe,
	output [31:0] dbgdata);

	//decode
	wire [31:0] instr, last;
	assign instr = imemdataout; //oj

	wire [6:0] op;
	wire [4:0] rs1, rs2, rd, shamt;
	wire [2:0] func3;
	wire [6:0] func7;
    reg [3:0] extop;
    reg [2:0] branch;

	assign op = instr[6:0];
	assign rs1 = instr[19:15];
	assign rs2 = instr[24:20];
	assign rd = instr[11:7];
	assign shamt = instr[24:20];
	assign func3 = instr[14:12];
	assign func7 = instr[31:25];

	wire [31:0] immI, immU, immS, immB, immJ;
	assign immI = {{20{instr[31]}}, instr[31:20]};
	assign immU = {instr[31:12], 12'b0};
	assign immS = {{20{instr[31]}}, instr[31:25], instr[11:7]};
	assign immB = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
	assign immJ = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};

    //alu
	reg [31:0] dataa, datab;
	reg [3:0]  ALUctr;
	wire [31:0] aluresult;
	wire less;
	wire zero;
	alu my_alu(dataa, datab, ALUctr, less, zero, aluresult);
	
	//cpu regs
	wire [31:0] wrdata;
	wire [31:0] rega, regb;
	reg alutoreg, memtoreg, regtomem;

	assign wrdata = alutoreg ? aluresult : (memtoreg ? dmemdataout : 32'b0);
    regfile myregfile(rs1, rs2, rd, wrdata, alutoreg || memtoreg, ~clock, rega, regb);
    reg [31:0] pc = 32'b0, next_pc = 32'b0;

    //attach wires
    reg [31:0] imem_addr, dmem_addr, dmem_din;
    reg imem_clk = 1'b0, dmem_clkr = 1'b0, dmem_clkw = 1'b0, dmem_we = 1'b0;
	reg [2:0] dmem_op;

    assign imemaddr = next_pc;
    assign dmemaddr = aluresult;
    assign dmemdatain = dmem_din;

    assign imemclk = ~clock;
    assign dmemrdclk = clock;
    assign dmemwrclk = ~clock; 

    assign dmemop = dmem_op;
    assign dmemwe = regtomem;
	assign dbgdata = pc;
	
    //exec
	parameter reset_vector = 0;
    always @(negedge clock) begin
        if(reset) begin 
			pc = reset_vector;
			next_pc = reset_vector;
		end 
		else begin
			pc = next_pc;
		end
	end

    always @(posedge clock)
		case(branch)
			3'b000: next_pc = pc + 4;
			3'b001: next_pc = pc + immJ;
			3'b010: next_pc = rega + immI;
			3'b100: if(zero) next_pc = pc + immB;
					else next_pc = pc + 4;
			3'b101: if(!zero) next_pc = pc + immB;
					else next_pc = pc + 4;
			3'b110: if(less) next_pc = pc + immB;
					else next_pc = pc + 4;
			3'b111: if(!less) next_pc = pc + immB;
					else next_pc = pc + 4;
		endcase

	always @(*)begin
		branch = 3'b0;
		alutoreg = 0;
		memtoreg = 0;
		regtomem = 0;

		case(op)
			7'b0110111: begin 			//lui
				extop = 3'b001;
				datab = immU;
				ALUctr = 4'b0011;
				alutoreg = 1;                
			end
			7'b0010111: begin			//auipc
				extop = 3'b001;
				dataa = pc;
				datab = immU;
				ALUctr = 4'b0000;
				alutoreg = 1;
			end
			7'b0010011: begin //I=type
				extop = 3'b000;
				dataa = rega;
				datab = immI;
				alutoreg = 1;
				case(func3)
					3'b000: ALUctr = 4'b0000; //addi
					3'b010: ALUctr = 4'b0010; //slti
					3'b011: ALUctr = 4'b1010; //sltiu
					3'b100: ALUctr = 4'b0100; //xori
					3'b110: ALUctr = 4'b0110; //ori
					3'b111: ALUctr = 4'b0111; //andi
					3'b001: begin datab = {27'b0, shamt}; ALUctr = 4'b0001; end//slli
					3'b101: case(func7)
							7'b0000000: begin datab = {27'b0, shamt}; ALUctr = 4'b0101; end//srli
							7'b0100000: begin datab = {27'b0, shamt}; ALUctr = 4'b1101; end//srai
						endcase
				endcase
			end
			7'b0110011: begin //R-type
				extop = 3'b000;
				dataa = rega;
				datab = regb;
				alutoreg = 1;
				case(func3)
					3'b000: case(func7)
							7'b0000000: ALUctr = 4'b0000; //add
							7'b0100000: ALUctr = 4'b1000; //sub
						endcase

					3'b001: ALUctr = 4'b0001; //sll
					3'b010: ALUctr = 4'b0010; //slt
					3'b011: ALUctr = 4'b1010; //sltu
					3'b101: case(func7)
							7'b0000000: ALUctr = 4'b0101; //srl
							7'b0100000: ALUctr = 4'b1101; //sra
						endcase
					3'b100: ALUctr = 4'b0100; //xor
					3'b110: ALUctr = 4'b0110; //or
					3'b111: ALUctr = 4'b0111; //and
					
				endcase
			end
			7'b0000011: begin //I-type		//load all
				memtoreg = 1;
				dataa = rega;
				datab = immI; //already SEXT
				ALUctr = 4'b0000;
				dmem_op = func3;			
			end
			7'b0100011: begin //S-type		//store all
				regtomem = 1;
				dataa = rega;
				datab = immS; //already SEXT
				ALUctr = 4'b0000;
				dmem_din = regb;
				dmem_op = func3;			
			end
			7'b1101111: begin //J-type 		//jal
				alutoreg = 1;
				dataa = pc;
				datab = 32'd4;
				ALUctr = 4'b0000;
				branch = 001;
			end
			7'b1100111: begin //I-type 		//jalr
				alutoreg = 1;
				dataa = pc;
				datab = 32'd4;
				ALUctr = 4'b0000;
				branch = 010;
			end
			7'b1100011: begin //B-type 		//conditional jmp
				dataa = rega;
				datab = regb;

				case(func3)
					3'b000: begin branch = 3'b100; ALUctr = 4'b0010; end
					3'b001: begin branch = 3'b101; ALUctr = 4'b0010; end
					3'b100: begin branch = 3'b110; ALUctr = 4'b0010; end
					3'b101: begin branch = 3'b111; ALUctr = 4'b0010; end
					3'b110: begin branch = 3'b110; ALUctr = 4'b1010; end
					3'b111: begin branch = 3'b111; ALUctr = 4'b1010; end
				endcase
			end
		endcase
	end

endmodule