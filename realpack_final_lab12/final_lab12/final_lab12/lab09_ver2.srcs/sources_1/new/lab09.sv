`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/30 19:13:33
// Design Name: 
// Module Name: lab09
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


module lab09(
//============= CLK ============
    input CLK100MHZ,
//============== SW =============
    input [15:0] SW,
//============== LED ============
    output reg [15:0] LED,
//============= VGA =============
    output [3:0] VGA_B,
    output [3:0] VGA_G,
    output VGA_HS,
    output [3:0] VGA_R,
    output VGA_VS,
//============= PS2 ===========
    input PS2_CLK,
    input PS2_DAT,
//============= bcdseg7 ========
    output [7:0] AN,
    output [7:0] HEX
);
//=============================
//REG/WIRE declarations
//=============================

//keyborad 
wire [7:0] current_key;
wire [7:0] ascii_key;
wire new_key;

//VGA
wire VGA_CLK;
wire [9:0] h_addr;
wire [9:0] v_addr;
wire [11:0] vga_data;
wire valid;
wire [6:0] h_char; //char 70 per line  //now display char positon in the screen, used in vga
wire [4:0] v_char; //char 30 lines     //now display char positon in the screen, used in vga
wire [3:0] h_font; //font 9 point horizontal //now display font position in the char
wire [3:0] v_font; //font 16 point vertical  //now display font position in the char

reg [7:0] m_char; //current character;

reg [6:0] h_cur;//current h position in the screen(not real positon, just showing in the screen)
reg [4:0] v_cur;//current v position in the screen(not real positon, just showing in the screen)
reg [1:0] in_state; //to wait for scancode translate(todo)
wire cursor;//todo
wire clk_cur;//todo
reg char_wr;//always be 1 in the posedge of VGA_CLK
wire [11:0] char_addr;//todo
reg [11:0] char_wr_addr; //write address in the screen, [h_cur, v_cur], higher 7 bit is h_cur, lower 5 bit is v_cur
wire [11:0] char_rd_addr;//todo
reg [7:0] char_buf_data; //data to write in the screen(ascii_key)
wire [7:0] char_out;//todo
reg [6:0] line_end[31:0]; //ending position in each line
reg [4:0] line_offset; //for rolling pages
reg [6:0] clear_point; //todo

//bcdseg7

wire [7:0] screen_en;
wire [7:0][3:0] screen_display;

//clock
wire CLK50MHZ;
wire CLK10KHZ;
wire CLK10MHZ;
wire CLK1HZ;
//============================
//structural coding
//============================

//clock
clkgen #(1) clkgen_1HZ(.clkin(CLK100MHZ), .clkout(CLK1HZ));
clkgen #(10000) clkgen_10KHZ(.clkin(CLK100MHZ), .clkout(CLK10KHZ));
clkgen #(50000000) clkgen_50MHZ(.clkin(CLK100MHZ), .clkout(CLK50MHZ));
clkgen #(10000000) clkgen_10MHZ(.clkin(CLK100MHZ), .clkout(CLK10MHZ));
clkgen #(25000000) my_vgaclk(.clkin(CLK100MHZ), .clkout(VGA_CLK));
clkgen #(2) my_1sclk(.clkin(CLK100MHZ), .clkout(clk_cur));

//digital screen
digital_screen screen(
        .clk(CLK10KHZ),
        .clr(1'b0),
        .en(screen_en),
        .display(screen_display),
        .dots(8'b0),
        .AN(AN),
        .HEX(HEX)
    );
    
//keyboard
deal_with_keyboard keyboard(
        .clk(CLK50MHZ),
        .ps2_clk(PS2_CLK),
        .ps2_data(PS2_DAT),
        .clr(SW[0]),
        .screen_en(screen_en),
        .ctrl_led(LED[15]),
        .shift_led(LED[14]),
        .caps_led(LED[13]),
        .screen_display(screen_display),
        .current_key(current_key),
        .ascii_key(ascii_key),
        .new_key(new_key)
    );

reg [4:0] hello_state;
reg [1:0] hello_flag;
reg [7:0] hello_ascii;

reg [4:0] un_state;
reg [7:0] un_ascii;
reg [1:0] un_flag;

reg [4:0] ti_state;
reg [15:0] ti_number;
reg [1:0] ti_flag;
reg [15:0] ti_sec;

reg [15:0] fib_num1;
reg [15:0] fib_num2;
reg [15:0] fib_now;
reg [15:0] fib_n;
reg [4:0] fib_state;
reg [1:0] fib_flag;
reg [1:0] fib_minus;
reg [1:0] fib_zero;
reg [1:0] fib_finish;
reg [1:0] ti_zero;
reg [1:0] ti_finish;

reg [15:0] factor;
reg [31:0] cnt;


always @(posedge CLK50MHZ)
begin
    if(SW[1] == 1'b0) //reset
    begin
        cnt <= 32'd0;
        fib_minus <= 2'd0;
        hello_ascii <= 8'd0;
        hello_state <= 5'd0;
        hello_flag <= 2'd0;
        un_state <= 5'd0;
        un_ascii <= 8'd0;
        un_flag <= 2'd0;
        ti_sec <= 16'd0;
        ti_state <= 5'd0;
        ti_number <= 16'd0;
        ti_flag <= 2'd0;
        ti_finish <= 2'd0;
        ti_zero <= 2'd0;

        fib_num1 <= 16'd1;
        fib_num2 <= 16'd1;
        fib_now <= 16'd1;
        fib_n <= 16'd0;
        fib_state <= 5'd0;
        fib_flag <= 2'd0;
        fib_finish <= 2'd0;
        fib_zero <= 2'd0;
        factor <= 16'd10000;
        
        h_cur <= 7'h0;
        v_cur <= 6'h0;
        in_state <= 2'd0;
        line_offset <= 5'd0;
        clear_point = 7'd0;
        char_buf_data <= 8'h00;
        char_wr_addr <= {clear_point, 5'd31};
    end
    else
    //================================================================================================================================
    //in fact, in_state always jump between 0 and 1, just to wait some time for scancode to translate(if there are some input signals)
    //in_state 0 is used to deal with something when not writing
    //in_state 1 is used to deal with something when writing
    //================================================================================================================================
    begin
    cnt <= cnt + 1;
    if(cnt == 50000000)
    begin
        ti_sec <= ti_sec + 1;
        cnt <= 0;
    end
        case(in_state)
        2'd0:
            begin
                if (hello_flag == 2'd1 && hello_state == 5'd5) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd72; hello_state <= 5'd6;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd6) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd101; hello_state <= 5'd7;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd7) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd108; hello_state <= 5'd8;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd8) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd108; hello_state <= 5'd9;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd9) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd111; hello_state <= 5'd10;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd10) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd32; hello_state <= 5'd11;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd11) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd119; hello_state <= 5'd12;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd12) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd111; hello_state <= 5'd13;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd13) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd114; hello_state <= 5'd14;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd14) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd108; hello_state <= 5'd15;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd15) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd100; hello_state <= 5'd16;
                end
                else if (hello_flag == 2'd1 && hello_state == 5'd16) 
                begin 
                    in_state <= 2'd3; hello_ascii <= 8'd33; hello_state <= 5'd17;
                end
                ////////////////////////////unknow command
                else if(un_flag == 2'd1 && un_state == 5'd0)
                begin
                    un_ascii <= 8'd85; un_state <= 5'd1; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd1)
                begin
                    un_ascii <= 8'd110; un_state <= 5'd2; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd2)
                begin
                    un_ascii <= 8'd107; un_state <= 5'd3; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd3)
                begin
                    un_ascii <= 8'd110; un_state <= 5'd4; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd4)
                begin
                    un_ascii <= 8'd111; un_state <= 5'd5; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd5)
                begin
                    un_ascii <= 8'd119; un_state <= 5'd6; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd6)
                begin
                    un_ascii <= 8'd110; un_state <= 5'd7; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd7)
                begin
                    un_ascii <= 8'd32; un_state <= 5'd8; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd8)
                begin
                    un_ascii <= 8'd99; un_state <= 5'd9; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd9)
                begin
                    un_ascii <= 8'd111; un_state <= 5'd10; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd10)
                begin
                    un_ascii <= 8'd109; un_state <= 5'd11; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd11)
                begin
                    un_ascii <= 8'd109; un_state <= 5'd12; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd12)
                begin
                    un_ascii <= 8'd97; un_state <= 5'd13; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd13)
                begin
                    un_ascii <= 8'd110; un_state <= 5'd14; in_state <= 2'd3;
                end
                else if(un_flag == 2'd1 && un_state == 5'd14)
                begin
                    un_ascii <= 8'd100; un_state <= 5'd15; in_state <= 2'd3;          
                end
                else if (ti_flag != 2'd0)
                begin
                    if (factor > ti_number && ti_zero == 2'd0)
                        factor = factor / 10;
                    else
                        in_state <= 2'd3;
                end
                else if (fib_flag == 2'd1)
                begin
                    if (fib_now  < fib_n + 16'd2)
                        begin
                            fib_num1 <= fib_num1 + fib_num2;
                            fib_num2 <= fib_num1;
                            fib_now <= fib_now + 16'd1;
                        end
                    else if (fib_minus == 2'd0)
                    begin
                        fib_num2 <= fib_num2 - 1;
                        fib_minus <= 2'd1;
                    end
                    else if (factor > fib_num2 && fib_zero == 2'd0)
                        factor = factor / 10;
                    else
                        in_state <= 2'd3;
                end
                else
                begin    
                    un_ascii <= 8'd0;
                    hello_ascii <= 8'd0;
                end
                ///////////////////////////

                if(new_key == 1'b1) in_state <= 2'd3;
                char_wr <= ~VGA_CLK;
                if(~char_wr) //not writing //todo
                begin
                    char_buf_data <= 8'h00; //clear the unused lines
                    clear_point <= clear_point + 1'd1;
                    char_wr_addr <= {clear_point, (5'd31 + line_offset)};
                    line_end[5'd31 + line_offset] = 7'd0;
                end
            end
        2'd1:
            begin
                in_state <= 2'd0;
                if (hello_ascii != 8'd0 || un_ascii != 8'd0 || ti_flag != 2'd0 || fib_flag != 2'd0)
                begin
                    if(hello_ascii != 8'd0)
                        begin char_buf_data <= hello_ascii;  end
                    else if (un_ascii != 8'd0)
                        begin char_buf_data <= un_ascii;  end
                    else if (ti_flag != 2'd0 && ti_finish == 2'd0)
                    begin
                        if (factor > 16'd0)
                        begin
                            if (ti_number >= factor)
                            begin
                                ti_zero <= 2'd1;
                                char_buf_data <= 16'd48 + ti_number / factor;
                                ti_number <= ti_number % factor;
                                factor <= factor / 10;
                            end
                            else 
                            begin
                                if (ti_zero == 2'd1) begin char_buf_data <= 16'd48;  end
                                else begin char_buf_data <= 16'd0;  end
                                factor <= factor / 10;
                            end
                        end
                        else 
                        begin
                            char_buf_data <= 0;
                            ti_finish <= 2'd1;
                        end
                    end
                    else if (fib_flag == 2'd1 && fib_finish == 2'd0) begin
                        if (factor > 16'd0)
                        begin
                            if (fib_num2 >= factor)
                            begin
                                fib_zero <= 2'd1;
                                char_buf_data <= 16'd48 + fib_num2 / factor;
                                fib_num2 <= fib_num2 % factor;
                                factor <= factor / 10;
                            end
                            else 
                            begin
                                if (fib_zero == 2'd1) begin char_buf_data <= 16'd48; end
                                else begin char_buf_data <= 16'd0; end
                                factor <= factor / 10;
                            end
                        end
                        else 
                        begin
                            char_buf_data <= 0;
                            fib_finish <= 2'd1;
                        end
                    end
                    else
                        begin 
                            char_buf_data <= 8'd0;
                        end

                    // copy and paste form normal input
                    char_wr <= 1'b1;
                    char_wr_addr <= {h_cur, (v_cur + line_offset)};//? why the address stay unchanged //todo
                    h_cur <= h_cur + 7'd1;
                    
                    
                    
                    if(h_cur >= 7'd69)//end of a line
                    begin
                        if(v_cur == 5'd29)// end of a page
                            line_offset <= line_offset + 1'd1; // v_cur stays in the bottom of the page
                        else
                            v_cur <= v_cur + 5'd1;
                        line_end[v_cur + line_offset] <= h_cur; // record the end position of this line 
                        h_cur <= 7'd0;// new line position
                    end
                    
                    
                    ////////////////////////////
                    if((un_state == 5'd15 && un_flag == 2'd1) || (hello_state == 5'd17 && hello_flag == 2'd1) || (ti_flag == 2'd1 && ti_finish == 16'd1) || (fib_flag == 2'd1 && fib_finish == 2'd1))
                    begin
                    if(v_cur == 5'd29) // end of a page
                        line_offset <= line_offset + 1'd1; // v_cur stays in the bottom of the page
                    else
                    begin
                        v_cur <= v_cur + 5'd1;
                    end
                    line_end[v_cur + line_offset] <= h_cur;// record the end position of this line 
                    h_cur <= 7'd0;// new line position
                    if(hello_state == 5'd17)
                        hello_state <= 5'd0;
                    if(un_flag == 2'd1)
                    begin
                        un_flag <= 2'd0;
                    end
                    hello_state <= 5'd0;
                    ti_state <= 5'd0;
                    ti_flag <= 2'd0;
                    ti_finish <= 2'd0;
                    ti_zero <= 2'd0;
                    
                    fib_num1 <= 16'd1;
                    fib_num2 <= 16'd1;
                    fib_now <= 16'd1;
                    fib_n <= 16'd0;
                    fib_state <= 5'd0;
                    fib_flag <= 2'd0;
                    fib_minus <= 2'd0;
                    fib_finish <= 2'd0;
                    factor <= 16'd10000;
                    fib_zero <= 2'd0;
                    end
                    ///////////////////////////////
                end
                else if(current_key == 8'h66) //backspace
                begin
                    char_buf_data <= 8'h0;
                    char_wr <= 1'b1;
                    if(h_cur == 7'd0) //beginning of a line
                    begin
                        if(v_cur == 5'd0) // beginning of a page
                        begin
                            h_cur <= 7'd0;
                            v_cur <= 5'd0;
                            char_wr_addr <= 12'd0 + {7'd0, line_offset}; //todo
                        end
                        /*else // mid of a page
                        begin
                            h_cur <= line_end[v_cur - 5'd1 + line_offset];
                            v_cur <= v_cur - 5'd1;
                            char_wr_addr <= {7'd69, (v_cur - 5'd1 + line_offset)}; //todo
                        end*/
                    end
                    else //mid of a line
                    begin
                        char_wr_addr <= {(h_cur - 7'd1), v_cur + line_offset};
                        h_cur <= h_cur - 7'd1;
                    end
                end
                else if(current_key == 8'h5a) //enter
                begin
                    if (hello_state == 5'd5)
                    begin
                        hello_flag <= 2'd1;
                    end
                    else if (ti_state == 5'd4)
                    begin
                        ti_number <= ti_sec;
                        ti_flag <= 2'd1;
                    end
                    else if (fib_state == 5'd4)
                    begin
                        fib_flag <= 2'd1;
                    end
                    else if(h_cur != 7'd0 && (un_state == 5'd16 || hello_state != 5'd5))
                    begin

                        un_flag <= 2'd1;
                        un_state <= 5'd0;
                    end
                    ////////////////////////
                    if(v_cur == 5'd29) // end of a page
                        line_offset <= line_offset + 1'd1; // v_cur stays in the bottom of the page
                    else
                    begin
                        v_cur <= v_cur + 5'd1;
                    end
                    line_end[v_cur + line_offset] <= h_cur;// record the end position of this line 
                    h_cur <= 7'd0;// new line position
                    
                end
                else if(ascii_key != 8'h00)//normal input
                begin
                    if (h_cur == 7'd0 && hello_state == 5'd0 && current_key == 8'h33) // ????§Ø?????
                        hello_state <= 5'd1;
                    else if (hello_state == 5'd1 && current_key == 8'h24)
                        hello_state <= 5'd2;
                    else if (hello_state == 5'd2 && current_key == 8'h4b)
                        hello_state <= 5'd3;
                    else if (hello_state == 5'd3 && current_key == 8'h4b)
                        hello_state <= 5'd4;
                    else if (hello_state == 5'd4 && current_key == 8'h44)
                        hello_state <= 5'd5; 
                    else if (h_cur == 7'd0 && ti_state == 5'd0 && current_key == 8'h2c)
                        ti_state <= 5'd1;
                    else if (ti_state == 5'd1 && current_key == 8'h43)
                        ti_state <= 5'd2;
                    else if (ti_state == 5'd2 && current_key == 8'h3a)
                        ti_state <= 5'd3;
                    else if (ti_state == 5'd3 && current_key == 8'h24)
                        ti_state <= 5'd4;
                    else if (h_cur == 7'd0 && fib_state == 5'd0 && current_key == 8'h2b)
                        fib_state <= 5'd1;
                    else if (fib_state == 5'd1 && current_key == 8'h43)
                        fib_state <= 5'd2;
                    else if (fib_state == 5'd2 && current_key == 8'h32)
                        fib_state <= 5'd3;
                      else if (fib_state == 5'd3 && current_key == 8'h29)
                        fib_state <= 5'd4;
                    else if (fib_state == 5'd4)
                        fib_n <= fib_n * 10 + ascii_key - 8'd48;
                    else
                    begin
                        ti_state <= 5'd0;
                        un_state <= 5'd16;
                        hello_state <= 5'd0;
                        fib_state <= 5'd0;
                   end
     
                    hello_flag <= 2'd0;

                    char_buf_data <= ascii_key;
                    char_wr_addr <= {h_cur, (v_cur + line_offset)};//? why the address stay unchanged //todo
                    char_wr <= 1'b1;
                    h_cur <= h_cur + 7'd1;
                    if(h_cur >= 7'd69)//end of a line
                    begin
                        if(v_cur == 5'd29)// end of a page
                            line_offset <= line_offset + 1'd1; // v_cur stays in the bottom of the page
                        else
                            v_cur <= v_cur + 5'd1;
                        line_end[v_cur + line_offset] <= h_cur; // record the end position of this line 
                        h_cur <= 7'd0;// new line position
                    end
                end
            end
        2'd2: begin in_state <= 2'd1; char_wr <= ~VGA_CLK; end
        2'd3: begin in_state <= 2'd2; char_wr <= ~VGA_CLK; end
        endcase
        m_char <= char_out; //always lock the readings //todo
    end
end

//VGA

vga_ctrl_plus my_vga(VGA_CLK, SW[0], vga_data, h_addr, v_addr, VGA_HS, VGA_VS, valid, VGA_R, VGA_G, VGA_B, h_char, v_char, h_font, v_font);

vga_ascii ascii(.pclk(CLK50MHZ), .rst(SW[0]), .c_valid(1'b1), .vga_data(vga_data), .mychar(m_char), .h_font(h_font), .v_font(v_font), .cursor(cursor));


char_buf mybuf(
               .addra(char_addr),
               .clka(CLK100MHZ),            
               .ena(~CLK50MHZ), 
               .dina(char_buf_data), 
               .wea(VGA_CLK), 
               .douta(char_out)
               );

assign char_addr = (VGA_CLK) ? char_wr_addr : char_rd_addr; // posedge to write, negedge to read

assign char_rd_addr = {h_char, (v_char + line_offset)}; // always read now position in the screen

assign cursor = (h_char == h_cur) & (v_char == v_cur) & clk_cur;// when showing position is now positon, cursor is blink 1s a time

endmodule


module clkgen(
    input wire clkin,
    output reg clkout
);
    parameter freq = 10000;
    parameter timeout = 50000000/freq - 1;
    reg [31:0] cnt = 32'b0;
    always @(posedge clkin)
    begin
        if (cnt >= timeout)
        begin
            cnt <= 0;
            clkout <= ~clkout;
        end
        else
            cnt <= cnt + 1;
    end

endmodule

`define CTRL  8'h14
`define SHIFT 8'h12
`define CAPS  8'h58

module deal_with_keyboard(
    input ps2_clk,
    input ps2_data,
    input clk,
    input clr,
    output reg ctrl_led,
    output reg shift_led,
    output reg caps_led,
    output reg [7:0] screen_en,
    output wire [7:0][3:0] screen_display,
    output reg [7:0] current_key,
    output wire [7:0] ascii_key,
    output reg new_key
    ); 
    reg nextdata_n;
    wire ready;
    wire overflow;
    wire [7:0] keydata;
    reg [7:0] key_count;
    reg ignore_next;
    reg pressing;
    reg last_caps;
    
    ps2_keyboard ps(
        .clk(clk),
        .clrn(clr),
        .ps2_clk(ps2_clk),
        .ps2_data(ps2_data),
        .nextdata_n(nextdata_n),
        .data(keydata),
        .ready(ready),
        .overflow(overflow)
    );
    
    scancode_to_ascii map({shift_led ^ (caps_led & ~ctrl_led), ctrl_led, current_key}, ascii_key);
    
    assign screen_display[7:6] = key_count;
    assign screen_display[3:2] = current_key;
    assign screen_display[1:0] = ascii_key;

    always @(posedge clk)
    begin
        if(ready == 1'b1 && nextdata_n == 1'b1)
        begin
            if(keydata == 8'hF0) //break code
            begin
                ignore_next <= 1'b1;
                pressing <= 1'b0; //always clear pressing state
                current_key <= 8'b0; //clear the key
            end
            else if(keydata == 8'hE0) //special key ignore
            begin
                ignore_next <= 1'b1;
            end
            else if(ignore_next) //after F0 or E0
            begin
                ignore_next <= 1'b0; //ignore, but we will look at the next key
                if(keydata == `CTRL)  ctrl_led <= 1'b0;
                if(keydata == `SHIFT) shift_led <= 1'b0;
            end
            else //normal key
            begin
                pressing <= 1'b1;
                new_key <= 1'b1;
                if(keydata != current_key) // not continous key
                begin
                    if(keydata == `CAPS)
                    begin
                       if(last_caps) begin caps_led <= 1'b0; last_caps <= 1'b0; end
                       else begin caps_led <= 1'b1; last_caps <= 1'b1; end
                    end
                    if(keydata == `CTRL)  ctrl_led <= 1'b1;
                    if(keydata == `SHIFT) shift_led <= 1'b1;
                    key_count <= key_count + 8'd1;
                    current_key <= keydata;
                end
            end

            nextdata_n <= 1'b0;
        end
        else
            begin nextdata_n <= 1'b1; new_key <= 1'b0; end
        if(pressing) screen_en <= 8'b11001111; else screen_en <= 8'b11000000;
        if(clr == 1'b1) //reset
        begin
            key_count <= 8'h0;
            current_key <= 8'h0;
            pressing <= 1'b0;
            ignore_next <= 1'b0;
            new_key <= 1'b0;
            screen_en <= 8'b11000000;
        end
    end
    
    
    
endmodule

module seg7(
    input wire [3:0] N,
    input wire dot,
    output wire [7:0] target
);
    reg [6:0] body;

    always @(N, dot) begin
        casex(N)
            4'hf: body = 7'b0001110;
            4'he: body = 7'b0000110;
            4'hd: body = 7'b0100001;
            4'hc: body = 7'b1000110;
            4'hb: body = 7'b0000011;
            4'ha: body = 7'b0001000;
            4'h9: body = 7'b0010000;
            4'h8: body = 7'b0000000;
            4'h7: body = 7'b1111000;
            4'h6: body = 7'b0000010;
            4'h5: body = 7'b0010010;
            4'h4: body = 7'b0011001;
            4'h3: body = 7'b0110000;
            4'h2: body = 7'b0100100;
            4'h1: body = 7'b1111001;
            4'h0: body = 7'b1000000;
            default: body = 7'b1111111;
        endcase
    end

    assign target = {~dot, body};
endmodule

module digital_screen(
    input wire clk,
    input wire clr,
    input wire [7:0] en,
    input wire [7:0][3:0] display,
    input wire [7:0] dots,
    output wire [7:0] AN,
    output wire [7:0] HEX
);
    wire [7:0][7:0] monitorDisplay;
    seg7 myseg7_0(.N(display[0]), .dot(dots[0]),.target(monitorDisplay[0]));
    seg7 myseg7_1(.N(display[1]), .dot(dots[1]),.target(monitorDisplay[1]));
    seg7 myseg7_2(.N(display[2]), .dot(dots[2]),.target(monitorDisplay[2]));
    seg7 myseg7_3(.N(display[3]), .dot(dots[3]),.target(monitorDisplay[3]));
    seg7 myseg7_4(.N(display[4]), .dot(dots[4]),.target(monitorDisplay[4]));
    seg7 myseg7_5(.N(display[5]), .dot(dots[5]),.target(monitorDisplay[5]));
    seg7 myseg7_6(.N(display[6]), .dot(dots[6]),.target(monitorDisplay[6]));
    seg7 myseg7_7(.N(display[7]), .dot(dots[7]),.target(monitorDisplay[7]));

    reg [2:0] select;
    assign AN = (8'b11111111 ^ (8'b1 << select)) | (~en);
    assign HEX = monitorDisplay[select];

    always @(posedge clk)
    begin
        if(clr)
            select <= 0;
        else
        begin
            if(select == 7)
                select <= 0;
            else
                select <= (select + 1);
        end
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 04:14:26 PM
// Design Name: 
// Module Name: ps2_keyboard
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


module ps2_keyboard(clk, clrn, ps2_clk, ps2_data, nextdata_n, data, ready, overflow);
    input clk, clrn, ps2_clk, ps2_data;
    input nextdata_n;
    output [7:0] data;
    output reg ready;
    output reg overflow; // fifo overflow
// internal signal, for test
    reg [9:0] buffer; // ps2_data bits
    reg [7:0] fifo[7:0];// data fifo
    reg [2:0] w_ptr, r_ptr;// fifo write and read pointers
    reg [3:0] count; // count ps2_data bits
// detect falling edge of ps2_clk
    reg [2:0] ps2_clk_sync;
    
    always @(posedge clk)
        ps2_clk_sync <= {ps2_clk_sync[1:0], ps2_clk};
    wire sampling = ps2_clk_sync[2] & ~ps2_clk_sync[1];

    always @(posedge clk)
    begin
        if(clrn) 
        begin // reset
            count <= 0; w_ptr <= 0; r_ptr <= 0; overflow <= 0; ready<= 0;
        end
        else 
        begin
            if(ready) // read to output next data
                if(nextdata_n == 1'b0) //read next data
                begin
                    r_ptr <= r_ptr + 3'b1;
                    if(w_ptr==(r_ptr + 1'b1)) //empty
                        ready <= 1'b0;
                end
            if(sampling) 
            begin
                if(count == 4'd10) 
                begin
                    if((buffer[0] == 0) && // start bit
                        (ps2_data) && // stop bit
                        (^buffer[9:1])) // odd parity
                    begin
                        fifo[w_ptr] <= buffer[8:1]; // kbd scan code
                        w_ptr <= w_ptr + 3'b1;
                        ready <= 1'b1;
                        overflow <= overflow | (r_ptr == (w_ptr + 3'b1));
                    end
                    count <= 0;// for next
                end 
                else 
                begin
                    buffer[count] <= ps2_data; // store ps2_data
                    count <= count + 3'b1;
                end
            end
        end
    end
    assign data = fifo[r_ptr]; //always set output data
endmodule

module scancode_to_ascii(addr, out);
    input [9:0] addr;
    output [7:0] out;
    reg [7:0] rom [0:95][0:3];
    initial
    begin
        $readmemh("C:/Users/DELL/Desktop/scan_code.txt", rom);
    end
    assign out = rom[addr[7:0]][addr[9:8]];
endmodule
module vga_ctrl_plus(
    input pclk,           
    input reset,
    input [11:0] vga_data,   
    output [9:0] h_addr,     
    output [9:0] v_addr,
    output hsync,          
    output vsync,   
    output valid,
    output [3:0] vga_r,     
    output [3:0] vga_g,
    output [3:0] vga_b,
    output reg [6:0] h_char,
    output     [4:0] v_char,
    output reg [3:0] h_font,
    output     [3:0] v_font
    );
    parameter h_frontporch = 96;
    parameter h_active = 150;
    parameter h_backporch = 784;
    parameter h_total = 800;
    
    parameter v_frontporch = 2;
    parameter v_active = 35;
    parameter v_backporch = 515;
    parameter v_total = 525;
    
    reg [9:0] x_cnt;
    reg [9:0] y_cnt;
    wire h_valid;
    wire v_valid;
    wire [9:0] v_modi;

    always @(posedge pclk) // deal with h direction
    begin
        if(h_valid == 1'b0)
        begin h_char <= 6'b0; h_font <= 4'b0; end
        else
        begin
            if(h_font >= 4'd8)
            begin
                h_char <= h_char + 6'd1;
                h_font <= 4'd0;
            end
            else
            begin
                h_font <= h_font + 4'd1;
            end
        end
    end
    //todo
    assign v_char = v_modi[8:4];
    assign v_font = v_modi[3:0];

    assign v_modi = v_valid ? (y_cnt - 10'd39) : {10{1'b0}};

    always @(posedge reset or posedge pclk)
        if (reset == 1'b1)
            x_cnt <= 1;
        else
        begin
            if (x_cnt == h_total)
                x_cnt <= 1;
            else
                x_cnt <= x_cnt + 10'd1;
        end

    always @(posedge pclk)
        if (reset == 1'b1)
            y_cnt <= 1;
        else begin
            if (y_cnt == v_total & x_cnt == h_total)
                y_cnt <= 1;
            else if (x_cnt == h_total)
                y_cnt <= y_cnt + 10'd1;
        end

    assign hsync = (x_cnt > h_frontporch);
    assign vsync = (y_cnt > v_frontporch);
    
    assign h_valid = (x_cnt > h_active) & (x_cnt <= h_backporch);
    assign v_valid = (y_cnt > v_active) & (y_cnt <= v_backporch);
    assign valid = h_valid & v_valid;
    
    assign h_addr = h_valid ? (x_cnt - 10'd144) : {10{1'b0}};
    assign v_addr = v_valid ? (y_cnt - 10'd35) : {10{1'b0}};
    
    assign vga_r = vga_data[11:8] & {4{valid}};
    assign vga_g = vga_data[7:4]  & {4{valid}};
    assign vga_b = vga_data[3:0]  & {4{valid}};
endmodule

module vga_ascii(
    input pclk,
    input rst,
    input c_valid,
    output reg [11:0] vga_data, //!modified from 23
    input [7:0] mychar,
    input [3:0] h_font,
    input [3:0] v_font,
    input cursor
);
    reg [11:0] myfont[4095:0];
    wire [11:0] line;
    initial 
    begin
        $readmemh("C:/Users/DELL/Desktop/vga_font.txt", myfont, 0, 4095);    
    end

    wire [11:0] out_data;

    wire [11:0] frontcolor; //white
    wire [11:0] backcolor; //black
    wire cursorline;

    assign frontcolor = 12'hFFF;
    assign backcolor  = 12'h000;

    assign out_data = (line[h_font - 1] == 1'b1 | cursorline) ? frontcolor : backcolor; //!modified from h_font
    assign line = myfont[{mychar, v_font}];

    assign cursorline = cursor & (h_font == 4'd0); // i don't know why it doesn't work

    always @(posedge pclk)
    begin
        if(rst == 1'b1)
            vga_data <= 12'h000;
        else
        begin
            if(c_valid == 1'b1)
                vga_data <= out_data;
            else
                vga_data <= backcolor;
        end
    end
endmodule