`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/29 15:58:11
// Design Name: 
// Module Name: lab07_test
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

/*module FSM_bin_t();
    reg clk, in, reset;
    wire out;
    
    FSM_bin my_fsm(clk, in, reset, out);
    initial begin
        reset = 1; 
        in = 0; #10 in = 1; #25
        reset = 0;
        in = 0; #40 in = 1; #5 in = 0; #20 in = 1;
    end
    initial begin
        clk = 0;
        forever begin
            #5 clk = ~clk;
        end
    end
endmodule*/

module keyboard_sim();

    parameter [31:0] clock_period = 10;
    reg clk,clrn;
    wire kbd_clk, kbd_data;
    wire [7:0] key_count, cur_key;
    wire nextdata_n;
    wire ready, overflow;
    ps2_keyboard_model model(
    .ps2_clk(kbd_clk),
    .ps2_data(kbd_data)
    );
    
    keyboard_t my_kbd(clk, clrn, kbd_clk, kbd_data, key_count, cur_key, nextdata_n, ready, overflow);

    initial begin 
        clk = 0;
        forever
        #(clock_period/2) clk = ~clk;
    end

    initial begin
        clrn = 1'b0; #20;
        clrn = 1'b1; #20;
        model.kbd_sendcode(8'h1C); // press 'A'
        #20
        model.kbd_sendcode(8'hF0); // break code
        #20
        model.kbd_sendcode(8'h1C); // release 'A'
        #20
        model.kbd_sendcode(8'h1B); // press 'S'
        #20
        model.kbd_sendcode(8'h1B); // keep pressing 'S'
        #20
        model.kbd_sendcode(8'h1B); // keep pressing 'S'
        #20
        model.kbd_sendcode(8'hF0); // break code
        #20
        model.kbd_sendcode(8'h1B); // release 'S'
        $stop;
    end
endmodule

module keyboard_sim_b();
    parameter [31:0] clock_period = 10;
    reg clk,clrn;
    wire kbd_clk, kbd_data;
    wire [7:0] key_count, cur_key, ascii_key;
    wire nextdata_n;
    wire ready, overflow;
    wire [7:0] an, hex;
    ps2_keyboard_model model(
    .ps2_clk(kbd_clk),
    .ps2_data(kbd_data)
    );
    
    keyboard_b my_kbd(clk, clrn, kbd_clk, kbd_data, cur_key, ready, overflow, an, hex);
    initial begin 
        clk = 0;
        forever
        #(clock_period/2) clk = ~clk;
    end

    initial begin
        clrn = 1'b0; #20;
        clrn = 1'b1; #20;
        model.kbd_sendcode(8'h1C); // press 'A'
        #20
        model.kbd_sendcode(8'hF0); // break code
        #20
        model.kbd_sendcode(8'h1C); // release 'A'
        #20
        model.kbd_sendcode(8'h1B); // press 'S'
        #20
        model.kbd_sendcode(8'h1B); // keep pressing 'S'
        #20
        model.kbd_sendcode(8'h1B); // keep pressing 'S'
        #20
        model.kbd_sendcode(8'hF0); // break code
        #20
        model.kbd_sendcode(8'h1B); // release 'S'
        $stop;
    end
endmodule