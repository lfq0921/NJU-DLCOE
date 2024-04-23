`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/08 14:11:07
// Design Name: 
// Module Name: lab11_test
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


module testbench_cpu();
    integer numcycles; //number of cycles in test
    reg clk,reset; //clk and reset signals
    reg[8*30:1] testcase; //name of testcase

    // CPU declaration
    // signals
    wire [31:0] iaddr,idataout;
    wire iclk;
    wire [31:0] daddr,ddataout,ddatain;
    wire drdclk, dwrclk, dwe;
    wire [2:0] dop;
    wire [23:0] cpudbgdata;

    //main CPU
    rv32is mycpu(.clock(clk),
    .reset(reset),
    .imemaddr(iaddr), .imemdataout(idataout), .imemclk(iclk),
    .dmemaddr(daddr), .dmemdataout(ddataout), .dmemdatain(ddatain),
    .dmemrdclk(drdclk), .dmemwrclk(dwrclk), .dmemop(dop), .dmemwe(dwe), .dbgdata(cpudbgdata));

    //instruction memory, no writing
    testmem instructions(
    .address(iaddr[17:2]),
    .clock(iclk),
    .q(idataout));

    //data memory
    dmem datamem(.addr(daddr),
    .dataout(ddataout),
    .datain(ddatain),
    .rdclk(drdclk),
    .wrclk(dwrclk),
    .memop(dop),
    .we(dwe));

    //useful tasks
    task step; //step for one cycle ends 1ns AFTER the posedge of the next cycle
    begin
    #9 clk=1'b0;
    #10 clk=1'b1;
    numcycles = numcycles + 1;
    #1 ;
    end
    endtask

    task stepn; //step n cycles
    input integer n;
    integer i;
    begin
    for (i =0; i<n ; i=i+1)
    step();
    end
    endtask

    task resetcpu; //reset the CPU and the test
    begin
    reset = 1'b1;
    step();
    #5 reset = 1'b0;
    numcycles = 0;
    end
    endtask

    task loadtestcase; //load intstructions to instruction mem
        begin
        $readmemh({"D:/CS/lab/lab11/test/", testcase, ".hex"}, instructions.ram);
        $display("---Begin test case %s-----", testcase);
        end
    endtask

    task checkreg;//check registers
        input [4:0] regid;
        input [31:0] results;
        reg [31:0] debugdata;
        begin
        debugdata=mycpu.myregfile.regs[regid]; //get register content
        if(debugdata==results)
        begin
        $display("OK: end of cycle %d reg %h need to be %h, get %h",
        numcycles-1, regid, results, debugdata);
        end
        else
        begin
        $display("!!!Error: end of cycle %d reg %h need to be %h, get %h",
        numcycles-1, regid, results, debugdata);
        end
        end
    endtask

    initial begin:TestBench
        #80
        // output the state of every instruction
        $monitor("cycle=%d, pc=%h, instruct= %h op=%h, rs1=%h,rs2=%h, rd=%h, t1=%h, t2=%h, t3=%h", 
        numcycles, mycpu.pc, mycpu.instr, mycpu.op, mycpu.rs1,mycpu.rs2,mycpu.rd, mycpu.myregfile.regs[6], mycpu.myregfile.regs[7], mycpu.myregfile.regs[28]);

        testcase = "add";
        loadtestcase();
        resetcpu();
        step();
        checkreg(6,100); //t1==100
        step();
        checkreg(7,20); //t2=20
        step(); 
        checkreg(28,120); //t3=120
        $stop();
    end

endmodule
