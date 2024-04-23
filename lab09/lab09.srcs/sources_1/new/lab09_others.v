`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/30 17:05:27
// Design Name: 
// Module Name: lab09_others
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

//module done
module clkgen(input clkin, input rst, input clken, output reg clkout = 0);
    parameter clk_freq = 1;  
    parameter count_limit = 100000000/clk_freq/2 - 1;
    //parameter count_limit = 10/clk_freq/2 - 1; //for simulation test
    
    reg [31:0] clkcount = 32'b0;
    always @(posedge clkin) begin
        if(rst) begin clkcount <= 0; clkout <= 0; end
        else begin
            if(clken) begin
                if(clkcount >= count_limit) begin 
                    clkcount <= 32'd0; 
                    clkout <= ~clkout;
                end
                else clkcount <= clkcount + 1;
            end
        end
    end
endmodule

module sevenseg( input clk, input [7:0] en, input [31:0] digits, output [7:0] an, output [7:0] hex);
    reg [3:0] d;
    reg [2:0] s;
    wire [7:0] my_an;
    initial begin
    s= 3'b000;
    end
    
    always @(s)
        case (s)
          3'd0 : d = digits[3:0];
          3'd1 : d = digits[7:4];
          3'd2 : d = digits[11:8];
          3'd3 : d = digits[15:12];
          3'd4 : d = digits[19:16];
          3'd5 : d = digits[23:20];
          3'd6 : d = digits[27:24];
          3'd7 : d = digits[31:28];
       default:  d = 4'd0;
       endcase 
    always@(posedge clk)
        s<=s+1;
    decode38 dec(s, my_an);	 
    assign an=(en[s]==1'b1)?~my_an:8'hff;
    bcd7seg seg(d, hex);
endmodule

module decode38 (
    input [2:0] s,
    output reg [7:0] a
);
always @(s)
        case (s)
          3'b000 : a = 8'b00000001;
          3'b001 : a = 8'b00000010;
          3'b010 : a = 8'b00000100;
          3'b011 : a = 8'b00001000;
          3'b100 : a = 8'b00010000;
          3'b101 : a = 8'b00100000;
          3'b110 : a = 8'b01000000;
          3'b111 : a = 8'b10000000;
       default:  a = 8'b00000000;
       endcase 

endmodule

module bcd7seg(
	 input  [3:0] b,
	 output reg [7:0] h
	 );
    always @(*)
        case (b)
            4'b0000: h = 8'b11000000; //70H
            4'b0001: h = 8'b11111001; //79H
            4'b0010: h = 8'b10100100; //24H
            4'b0011: h = 8'b10110000; //30H
            4'b0100: h = 8'b10011001;
            4'b0101: h = 8'b10010010;
            4'b0110: h = 8'b10000010;
            4'b0111: h = 8'b11111000;
            4'b1000: h = 8'b10000000;
            4'b1001: h = 8'b10010000; //10H
            4'b1010: h = 8'b10001000;
            4'b1011: h = 8'b10000011;
            4'b1100: h = 8'b11000110;
            4'b1101: h = 8'b10100001;
            4'b1110: h = 8'b10000110;
            4'b1111: h = 8'b10001110;
       endcase 
	 
endmodule