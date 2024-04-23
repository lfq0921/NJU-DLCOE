`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/29 15:53:14
// Design Name: 
// Module Name: lab07_fsm
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

//original version, already done
module ps2_keyboard(clk,clrn,ps2_clk,ps2_data,data,
        ready,nextdata_n,overflow);
    input clk,clrn, ps2_clk, ps2_data; //clk should be 1MHz or 10MHz
    input nextdata_n;
    output [7:0] data;
    output reg ready;
    output reg overflow; // fifo overflow

    // internal signal, for test
    reg [9:0] buffer; // ps2_data bits
    reg [7:0] fifo[7:0]; // data fifo
    reg [2:0] w_ptr,r_ptr; // fifo write and read pointers
    reg [3:0] count; // count ps2_data bits

    // detect falling edge of ps2_clk
    reg [2:0] ps2_clk_sync;
    always @(posedge clk) begin
        ps2_clk_sync <= {ps2_clk_sync[1:0], ps2_clk};
    end

    wire sampling = ps2_clk_sync[2] & ~ps2_clk_sync[1];

    always @(posedge clk) begin
        if (clrn == 0) begin // reset
            count <= 0; w_ptr <= 0; r_ptr <= 0; overflow <= 0; ready<= 0;
        end
        else begin
            if ( ready ) begin // read to output next data
                if(nextdata_n == 1'b0) begin //read next data
                    r_ptr <= r_ptr + 3'b1;
                    if(w_ptr == (r_ptr + 1'b1)) //empty
                        ready <= 1'b0;
                end
            end
            if (sampling) begin
                if (count == 4'd10) begin
                    if ((buffer[0] == 0) && // start bit
                    (ps2_data) && // stop bit
                    (^buffer[9:1])) begin // odd parity
                        fifo[w_ptr] <= buffer[8:1]; // kbd scan code
                        w_ptr <= w_ptr+3'b1;
                        ready <= 1'b1;
                        overflow <= overflow | (r_ptr == (w_ptr + 3'b1));
                    end
                    count <= 0; // for next
                end 
                else begin
                    buffer[count] <= ps2_data; // store ps2_data
                    count <= count + 3'b1;
                end
            end
        end
    end
    assign data = fifo[r_ptr]; //always set output data

endmodule


module ps2_keyboard_model(
    output reg ps2_clk,
    output reg ps2_data
    );
    parameter [31:0] kbd_clk_period = 60;
    initial ps2_clk = 1'b1;

    task kbd_sendcode;
        input [7:0] code; // key to be sent
        integer i;

        reg[10:0] send_buffer;
        begin
            send_buffer[0] = 1'b0; // start bit
            send_buffer[8:1] = code; // code
            send_buffer[9] = ~(^code); // odd parity bit
            send_buffer[10] = 1'b1; // stop bit
            i = 0;
            while( i < 11) begin
                // set kbd_data
                ps2_data = send_buffer[i];
                #(kbd_clk_period/2) ps2_clk = 1'b0;
                #(kbd_clk_period/2) ps2_clk = 1'b1;
                i = i + 1;
            end
        end
    endtask
endmodule


//passed oj, original version
module keyboard(
    input clk,
	input clrn,
	input ps2_clk,
	input ps2_data,
	output reg [7:0] key_count = 8'b0,
	output reg [7:0] cur_key = 8'b0,
	output [7:0] ascii_key);

    wire [7:0] key_data; 
    reg [7:0] last_key = 8'b0;
    reg nextdata_n = 1'b1;
    wire ready, overflow;

    scancode_ram myram(clk, cur_key, ascii_key);
    ps2_keyboard mykey(clk, clrn, ps2_clk, ps2_data, key_data, ready, nextdata_n, overflow);

    always @(posedge clk) begin
        if(nextdata_n) begin
            if(ready) begin
                //problematic when press teo keys and release one by one, cur_key will set to the later-released one instead of 0
                if(last_key == 8'hf0 && key_data == cur_key) cur_key <= 8'b0;  
                else if(key_data != 8'hf0 && key_data != cur_key) begin 
                        key_count <= key_count + 8'b1;
                        cur_key <= key_data;
                end
                nextdata_n <= 1'b0;
            end
        end
        else begin
            nextdata_n <= 1'b1;
            last_key <= key_data;
        end
    end
endmodule

//for simulation test, done
module keyboard_t(
    input clk,
	input clrn,
	input ps2_clk,
	input ps2_data,
	output reg [7:0] key_count = 8'b0,
	output reg [7:0] cur_key = 8'b0,
	output reg nextdata_n = 1'b1,
	output ready, overflow);

    wire [7:0] key_data; 
    reg [7:0] last_key = 8'b0;

    ps2_keyboard mykey(clk, clrn, ps2_clk, ps2_data, key_data, ready, nextdata_n, overflow);

    always @(posedge clk) begin
        if(nextdata_n) begin
            if(ready) begin
                if(last_key == 8'hf0 && key_data == cur_key) cur_key <= 8'b0;
                else if(key_data != 8'hf0 && key_data != cur_key) begin 
                        key_count <= key_count + 8'b1;
                        cur_key <= key_data;
                end
                nextdata_n <= 1'b0;
            end
        end
        else begin
            nextdata_n <= 1'b1;
            last_key <= key_data;
        end
    end
endmodule

//11.11, done
module keyboard_b(
    input clk,
	input clrn,   //0 for reset means only works when clrn = 1
	input PS2_CLK,
	input PS2_DATA,
	output reg [7:0] cur_key = 8'b0,
	output [7:0] AN,
    output [7:0] HEX,
    output reg shiftf = 1'b0,
    output reg ctrlf = 1'b0
);

    wire ready, overflow;
    wire [7:0] key_data; 
    reg [7:0] last_key = 8'b0;
    reg [7:0] key_count = 8'b0;
    wire [7:0] ascii_key;
    reg nextdata_n = 1'b1;
    reg caps = 1'b0;
    
    scancode_ram myram(cur_key, caps, shiftf, ascii_key); 
    ps2_keyboard mykey(clk, clrn, PS2_CLK, PS2_DATA, key_data, ready, nextdata_n, overflow);
    
    wire clk_5khz;
    wire [7:0] an1, an2, hex1, hex2;
    clkgen #(5000) my_5khz(clk, 1'b0, 1'b1, clk_5khz);
    sevenseg my_seg1(clk_5khz, 8'b11001111, {key_count, 8'h00, ascii_key, cur_key}, an1, hex1); 
    sevenseg my_seg2(clk_5khz, 8'b11000000, {key_count, 8'h00, ascii_key, cur_key}, an2, hex2); 
    assign AN = cur_key != 8'b0 ? an1: an2;
    assign HEX = cur_key != 8'b0 ? hex1: hex2;//error when using ready instead of cur_key != 0

    always @(posedge clk) begin
        if(clrn == 1'b0) begin
            key_count = 8'b0;
            last_key = 8'b0;
            cur_key = 8'b0;
            caps = 1'b0;
        end
        else if(nextdata_n) begin
            if(ready) begin
                //when press a then shift, should we change the output A?
                if(last_key == 8'hf0) begin
                    if(key_data == 8'h12) shiftf <= 1'b0;
                    if(key_data == 8'h14) ctrlf <= 1'b0;
                    if(key_data == cur_key) cur_key <= 8'b0;
                end
                else if(key_data != 8'hf0 && key_data != cur_key) begin 
                    if(key_data == 8'h12) shiftf <= 1'b1;
                    else if(key_data == 8'h14) ctrlf <= 1'b1;
                    else begin
                        key_count <= key_count + 8'b1;
                        cur_key <= key_data;
                        if(key_data == 8'h58) caps = ~caps;
                    end
                end
                if(last_key == 8'hf0) begin
                    if(key_data == 8'h12) shiftf <= 1'b0;
                    if(key_data == 8'h14) ctrlf <= 1'b0;
                    if(key_data == cur_key) cur_key <= 8'b0;
                end
                else if(key_data != 8'hf0 && key_data != cur_key) begin 
                    if(key_data == 8'h12) shiftf <= 1'b1;
                    else if(key_data == 8'h14) ctrlf <= 1'b1;
                    else begin
                        key_count <= key_count + 8'b1;
                        cur_key <= key_data;
                    end
                end
                nextdata_n <= 1'b0;
            end
        end
        else begin
            nextdata_n <= 1'b1;
            last_key <= key_data;
        end
    end
        
endmodule

//11.11, done
module scancode_ram(
    input [7:0] cur_key,
    input caps, shiftf,
    output [7:0] ascii_key
);
    reg [7:0] ram1[8'hff:0];
    reg [7:0] ram2[8'hff:0];
    
    initial begin
        $readmemh("D:/CS/lab/lab07/rami.txt", ram1);
        $readmemh("D:/CS/lab/lab07/rami1.txt", ram2);
    end
    wire up, letter;
    assign letter = ram1[cur_key] >= 8'h61 && ram1[cur_key] <= 8'h7a;
    assign up = letter ? caps ^ shiftf : shiftf;
    assign ascii_key = (up) ? ram2[cur_key] : ram1[cur_key];
endmodule