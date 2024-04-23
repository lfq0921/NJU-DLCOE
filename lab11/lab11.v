module rv32is(
	input 	clock, //下降沿
	input 	reset, //高电平有效
	output [31:0] imemaddr,
	input  [31:0] imemdataout,
	output 	imemclk,
	output [31:0] dmemaddr,
	input  [31:0] dmemdataout,
	output [31:0] dmemdatain,
	output 	dmemrdclk,
	output	dmemwrclk,
	output [2:0] dmemop,
	output	dmemwe,
	output [31:0] dbgdata
    );

wire [6:0] op;
wire [4:0] rs1, rs2, rd;
wire [2:0] func3;
wire [7:0] func7;
wire [31:0] immI,immU, immS, immB,immJ;
reg [31:0] imm;
wire [2:0] ExtOP;//立即数产生器的输出类型
wire RegWr; //控制是否对寄存器 rd 进行写回 1 时写回寄存器。
wire ALUAsrc; //选择 ALU 输入端 A 的来源 0 选择 rs1，1选择 PC。
wire [1:0] ALUBsrc;//00 时选择 rs2 01 时选择 imm(当是立即数移位指令时，只有低 5 位有效)，10 时选择常数 4（用于跳转时计算返回地址 PC+4）。
wire [3:0] ALUctr; //选择 ALU 执行的操作
wire [2:0] Branch;
wire MemtoReg; //选择寄存器 rd 写回数据来源，为 0 时选择 ALU输出，为 1 时选择数据存储器输出。
wire MemWr; //控制是否对数据存储器进行写入，为 1 时写回存储器
wire [2:0] MenOP;
wire [31:0] AluOutput;
wire [31:0] ReadData1, ReadData2;
wire [31:0] PC, nPC;
wire zero, less;

assign op = imemdataout[6:0];
assign rs1 = imemdataout[19:15];
assign rs2 = imemdataout[24:20];
assign rd = imemdataout[11:7];
assign func3 = imemdataout[14:12];
assign func7 = imemdataout[31:25];

assign immI = {{20{imemdataout[31]}}, imemdataout[31:20]};
assign immU = {imemdataout[31:12], 12'b0};
assign immS = {{20{imemdataout[31]}}, imemdataout[31:25], imemdataout[11:7]};
assign immB = {{20{imemdataout[31]}}, imemdataout[7], imemdataout[30:25], imemdataout[11:8], 1'b0};
assign immJ = {{12{imemdataout[31]}}, imemdataout[19:12], imemdataout[20], imemdataout[30:21], 1'b0};

assign dmemaddr = AluOutput;
assign dmemdatain = ReadData2;
assign dmemwe = MemWr;
assign dmemop = MenOP;

assign dmemwrclk = ~clock;
assign dmemrdclk = clock;
assign imemclk = ~clock;

assign dbgdata = PC;
assign imemaddr = nPC;

PC_mux myPC(.CLK(clock), .reset(reset), .Branch(Branch), .zero(zero),
            .less(less), .imm(imm), .ReadData1(ReadData1), 
            .curPC(PC), .nextPC(nPC));
ALU myALU(.ALUAsrc(ALUAsrc), .ALUBsrc(ALUBsrc), .ReadData1(ReadData1),.ReadData2(ReadData2),
        .extend(imm), .PC(PC), .ALUctr(ALUctr), .AluOutput(AluOutput), .zero(zero), .less(less));
regfile myregfile(.CLK(~clock), .rs1(rs1), .rs2(rs2), .WriteReg(rd), .AluOutput(AluOutput),
        .Datain(dmemdataout), .MemtoReg(MemtoReg), .PC(PC), .RegWr(RegWr),
        .ReadData1(ReadData1), .ReadData2(ReadData2));
ControlUnit myControlUnit(.opcode(op), .func3(func3), .func7(func7), .ExtOP(ExtOP), .RegWr(RegWr),
        .ALUAsrc(ALUAsrc), .ALUBsrc(ALUBsrc),.ALUctr(ALUctr), .branch(Branch),.MemtoReg(MemtoReg),
        .MemWr(MemWr), .MenOP(MenOP));

always@(*)
    begin
        case(ExtOP) 
            3'b000:  imm = immI;
            3'b001:  imm = immU;
            3'b010:  imm = immS;
            3'b011:  imm = immB;
            3'b100:  imm = immJ;
            default:  imm = 0;
        endcase
    end

endmodule

module PC_mux(
    input CLK,            
    input reset,
    input [2:0] Branch,
    input zero,
    input less,
    input [31:0] imm,
    input [31:0] ReadData1,
    output reg[31:0] curPC,  //当前指令的地址
    output reg[31:0] nextPC  //下条指令的地址
);

initial begin
    curPC = 0; //初始值为0
    nextPC = 0;
end
always@(*)
begin
if(reset) begin
    nextPC = 0; curPC = 0; 
    end
else begin
 case(Branch)
        3'b000: nextPC = curPC  + 4;
        3'b001: nextPC = curPC  + imm;
        3'b010: nextPC = ReadData1 + imm;
        3'b100: begin
            if (zero == 0)
                nextPC = curPC  + 4;
            else
                nextPC = curPC  + imm;
            end
        3'b101: begin
            if (zero == 0)
                nextPC = curPC  + imm;
            else
                nextPC = curPC  + 4;
            end
        3'b110: begin
            if (less == 0)
                nextPC = curPC  + 4;
            else
                nextPC = curPC  + imm;
            end
        3'b111: begin
            if (less == 0)
                nextPC = curPC  + imm;
            else
                nextPC = curPC  + 4;
            end
    endcase
    end
end
always@(negedge CLK)
begin
if (reset) begin
    curPC <= 0; nextPC <= 0;
    end
else
    curPC <= nextPC;
end
endmodule

module regfile(
        input CLK,              //时钟信号
        input [4:0] rs1,        //rs1寄存器地址输入端口
        input [4:0] rs2,        //rs2寄存器地址输入端口
        input [4:0] WriteReg,   //rd输入地址
        input [31:0] AluOutput, //ALU输出
        input [31:0] Datain,    //存储器输出
        input MemtoReg,         //是alu还是存储器
        input [31:0] PC,        //当前PC值
        input RegWr,            //写使能信号，时钟下降沿触发写入
        output [31:0] ReadData1, //rs1寄存器数据输出端口
        output [31:0] ReadData2  //rs2寄存器数据输出端口
        );
reg [31:0] regs[31:0];
reg [31:0] temprw;
initial regs[0] <= 0;

assign ReadData1 = regs[rs1];
assign ReadData2 = regs[rs2];

always@(posedge CLK)
    begin
        if(RegWr) begin
            if(MemtoReg == 1) begin   // 人啊 要记住regs[0] 一定不能被赋值！！！！！！！
                case(WriteReg)
                5'b00000:
                    regs[WriteReg] <= 0;
                default:
                    regs[WriteReg] <= Datain;
                endcase
                end
            else begin
                case (WriteReg)
                5'b00000:
                    regs[WriteReg] <= 0;
                default:
                    regs[WriteReg] <= AluOutput;
                endcase
                end
        end
    end
endmodule

module ALU(
        input ALUAsrc,          //输入端1位选
        input [1:0] ALUBsrc,    //输入端2位选
        input [31:0] ReadData1, //rs1寄存器读取数据
        input [31:0] ReadData2, //rs2寄存器读取数据
        input [31:0] extend,    //扩展后立即数
        input [31:0] PC,        //当前地址用于计算跳转地址
        input [3:0] ALUctr,      //ALU功能码
        output reg[31:0] AluOutput, //ALU计算结果
        output zero,
        output less
    );
reg [31:0]  B;
wire [31:0] A;
wire equal;

assign equal = (A == B) ? 1 : 0;
assign zero = (ALUctr == 4'b0010 || ALUctr == 4'b1010 ) ? equal : ((AluOutput == 0) ? 1 : 0);
assign less = (AluOutput == 0) ? 0 : 1;

always@(*) begin
    case(ALUBsrc)
        2'b00: B = ReadData2;
        2'b01: B = extend;
        2'b10: B = 32'h4;
    endcase
end
assign A = (ALUAsrc == 0) ? ReadData1 : PC;

always@(*) 
begin
        case(ALUctr)
            4'b0000: AluOutput = A + B;
            4'b1000: AluOutput = A - B;
            4'b0100: AluOutput = A ^ B;
            4'b1100: AluOutput = A ^ B;
            4'b0110: AluOutput = A | B;
            4'b1110: AluOutput = A | B;
            4'b0111: AluOutput = A & B;
            4'b1111: AluOutput = A & B;
            4'b0001: AluOutput = A << B[4:0];
            4'b1001: AluOutput = A << B[4:0];
            4'b0101: AluOutput =  A >> B[4:0]; //逻辑右移
            4'b1101: AluOutput = ($signed(A)) >>> B[4:0]; //算术右移
            4'b0011: AluOutput = B;
            4'b1011: AluOutput = B;
            4'b1010: AluOutput = (A < B) ? 1 : 0;	
            4'b0010:begin
	                if (A[31] == 1 && B[31] == 0) 
                        AluOutput = 1;
                    else if (A[31] == 0 && B[31] == 1) 
                        AluOutput = 0;
                    else 
                        AluOutput = (A < B) ? 1 : 0;     
	                end	
        endcase
    end 
endmodule

//控制信号 组合逻辑
module ControlUnit(
    input [6:0] opcode,
    input [7:0] func7,
    input [2:0] func3,
    output reg [2:0] branch,
    output reg [2:0] ExtOP,//立即数产生器的输出类型
    output reg RegWr, //控制是否对寄存器 rd 进行写回 1 时写回寄存器。
    output reg ALUAsrc, //选择 ALU 输入端 A 的来源 0 选择 rs1，1选择 PC。
    output reg [1:0] ALUBsrc,//00 时选择 rs2 01 时选择 imm(当是立即数移位指令时，只有低 5 位有效)，10 时选择常数 4（用于跳转时计算返回地址 PC+4）。
    output reg [3:0] ALUctr, //选择 ALU 执行的操作
    output reg MemtoReg, //选择寄存器 rd 写回数据来源，为 0 时选择 ALU输出，为 1 时选择数据存储器输出。
    output reg MemWr, //控制是否对数据存储器进行写入，为 1 时写回存储器
    output reg [2:0] MenOP //010 时为 4 字节读写，为 001 时为 2 字节读写带符号扩展，为 000 时为 1 字节读写带符号扩展，为 101 时为 2 字节读写无符号扩展，为 100 时为 1 字节读写无符号扩展
);
always@(*) begin
    case(opcode[6:2]) 
       5'b01101: begin //lui
           ExtOP = 3'b001;
           branch = 3'b000;
           RegWr = 1;
           MemtoReg = 0;
           MemWr = 0;
           ALUBsrc = 2'b01;
           ALUctr = 4'b0011;
       end
       5'b00101: begin//auipc
           ExtOP = 3'b001;
           branch = 3'b000;
           RegWr = 1;
           MemtoReg = 0;
           MemWr = 0;
           ALUAsrc = 1;
           ALUBsrc = 2'b01;
           ALUctr = 4'b0000;
        end
       5'b00100: begin// addi slti sltiu xori ori andi slli srli srai
            ExtOP = 3'b000;
            branch = 3'b000;
            RegWr = 1;
            MemtoReg = 0;
            MemWr = 0;
            ALUAsrc = 0;
            ALUBsrc = 2'b01;
            if (func3 == 3'b000)  //addi
                ALUctr = 4'b0000;
            else if (func3 == 3'b010)  //slti
                ALUctr = 4'b0010;
            else if (func3 == 3'b011)  //sltiu
                ALUctr = 4'b1010;
            else if (func3 == 3'b100)  //xori
                ALUctr = 4'b0100;
            else if (func3 == 3'b110)  //ori
                ALUctr = 4'b0110;
            else if (func3 == 3'b111)  //andi
                ALUctr = 4'b0111;
            else if (func3 == 3'b001 && func7[5] == 0)  //slli
                ALUctr = 4'b0001;
            else if (func3 == 3'b101 && func7[5] == 0)  //srli
                ALUctr = 4'b0101;
            else if (func3 == 3'b101 && func7[5] == 1)  //srai
                ALUctr = 4'b1101;
        end
       5'b01100: begin// add sub sll slt sltu xor srl sra or and
            branch = 3'b000;
            RegWr = 1;
            MemtoReg = 0;
            MemWr = 0;
            ALUAsrc = 0;
            ALUBsrc = 2'b00;
            if (func3 == 3'b000 && func7[5] == 0)  //add
                ALUctr = 4'b0000;
            else if (func3 == 3'b000 && func7[5] == 1)  //sub
                ALUctr = 4'b1000;
            else if (func3 == 3'b001)  //sll
                ALUctr = 4'b0001;
            else if (func3 == 3'b010)  //slt
                ALUctr = 4'b0010;
            else if (func3 == 3'b011)  //sltu
                ALUctr = 4'b1010;
            else if (func3 == 3'b100)  //xor
                ALUctr = 4'b0100;
            else if (func3 == 3'b101 && func7[5] == 0)  //srl
                ALUctr = 4'b0101;
            else if (func3 == 3'b101 && func7[5] == 1)  //sra
                ALUctr = 4'b1101;
            else if (func3 == 3'b110 && func7[5] == 0)  //or
                ALUctr = 4'b0110;
            else if (func3 == 3'b111)  //and
                ALUctr = 4'b0111;
        end
       5'b11011: begin //jal
            ExtOP = 3'b100;
            branch = 3'b001;
            RegWr = 1;
            MemtoReg = 0;
            MemWr = 0;
            ALUAsrc = 1;
            ALUBsrc = 2'b10;
            ALUctr = 4'b0000;
       end
       5'b11001: begin// jalr
            ExtOP = 3'b000;
            branch = 3'b010;
            RegWr = 1;
            MemtoReg = 0;
            MemWr = 0;
            ALUAsrc = 1;
            ALUBsrc = 2'b10;
            ALUctr = 4'b0000;
       end
       5'b11000: begin//beq bne blt bge bltu bgeu
            ExtOP = 3'b011;
            RegWr = 0;
            MemWr = 0;
            ALUAsrc = 0;
            ALUBsrc = 2'b00;
            if (func3 == 3'b000) begin  //beq
                branch = 3'b100;
                ALUctr = 4'b0010;
            end
            else if (func3 == 3'b001) begin  //bne
                branch = 3'b101;
                ALUctr = 4'b0010;
            end
            else if (func3 == 3'b100) begin  //blt
                branch = 3'b110;
                ALUctr = 4'b0010;
            end
            else if (func3 == 3'b101) begin  //bge
                branch = 3'b111;
                ALUctr = 4'b0010;
            end
            else if (func3 == 3'b110) begin  //bltu
                branch = 3'b110;
                ALUctr = 4'b1010;
            end
            else if (func3 == 3'b111) begin  //bgeu
                branch = 3'b111;
                ALUctr = 4'b1010;
            end
          end
        5'b00000: begin //lb lh lw lbu lhu
            ExtOP = 3'b000;
            branch = 3'b000;
            RegWr = 1;
            MemtoReg = 1;
            MemWr = 0;
            ALUAsrc = 0;
            ALUBsrc = 2'b01; 
            ALUctr = 4'b0000;
            MenOP = func3;
        end
        5'b01000: begin //sb sh sw
            ExtOP = 3'b010;
            branch = 3'b000;
            RegWr = 0;
            MemWr = 1;
            ALUAsrc = 0;
            ALUBsrc = 2'b01; 
            ALUctr = 4'b0000;
            MenOP = func3;
        end
    endcase
end                
endmodule