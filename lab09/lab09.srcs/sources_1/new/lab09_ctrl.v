`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/01 16:18:18
// Design Name: 
// Module Name: lab09_ctrl
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

module lab09_ctrl(
    input CLK100MHZ,
    
    //key board
    input PS2_CLK,
	input PS2_DATA,
	
	//led for curkey, keycount
	output [7:0] AN,
    output [7:0] HEX,
    output [15:0] LED,
    
	//vga
	output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS
    );
    
    //two regs
    reg [11:0] ascii_reg[4096:0];
    initial begin
        $readmemh("D:/CS/lab/lab09/ascii_init.txt", ascii_reg); //tested
    end
    reg [7:0] key_reg [2134:0];  //30*71
    reg [7:0] key_reg_open [2134:0];
    reg open = 1;
    reg [15:0] i;
    
    //key board
    wire ready, overflow;
    wire [7:0] key_data, ascii_key; 
    reg [7:0] last_key = 8'b0, cur_key = 8'b0;
    reg [7:0] key_count = 8'b0;
    reg nextdata_n = 1'b1;
    reg caps = 1'b0, shiftf = 1'b0, ctrlf = 1'b0;
    reg [7:0] buf_char = 8'b0, buf_now = 8'b0, buf_done = 8'b0, buf_deal = 8'b0;
    
    scancode_ram myram(buf_char, caps, shiftf, ascii_key);
    ps2_keyboard mykey(CLK100MHZ, 1'b1, PS2_CLK, PS2_DATA, key_data, ready, nextdata_n, overflow);
    
    //clock and display
    wire clk_5khz, clk_2hz;
    reg clk_2hz_last;
    clkgen #(5000) my_5khz(CLK100MHZ, 1'b0, 1'b1, clk_5khz);
    clkgen #(1) my_2hz(CLK100MHZ, 1'b0, 1'b1, clk_2hz);         //test the time scale
    wire [7:0] an1, an2, hex1, hex2;
    
    reg ledon = 0;
    assign LED[15:0] = ledon ? 16'hffff : 16'h0000;
    
    sevenseg my_seg1(clk_5khz, 8'b00000011, {24'b0, ascii_key}, an1, hex1); 
    sevenseg my_seg2(clk_5khz, 8'b00000000, {24'b0, ascii_key}, an2, hex2); 
    assign AN = cur_key != 8'b0 ? an1: an2;
    assign HEX = cur_key != 8'b0 ? hex1: hex2;  //error when using ready instead of cur_key != 0
    
    always @(posedge CLK100MHZ) begin
        if(nextdata_n) begin
            if(ready) begin
                if(open) open = 0;
                //when press a then shift, should we change the output A?
                else if(last_key == 8'hf0) begin                             //end stage
                    if(key_data == 8'h12) shiftf <= 1'b0;
                    if(key_data == 8'h14) ctrlf <= 1'b0;
                    if(key_data == cur_key) cur_key <= 8'b0;
                end
                else if(key_data != 8'hf0) begin
                    if(key_data != cur_key) begin               //shift or ctrl or a new key
                        if(key_data == 8'h12) shiftf <= 1'b1;
                        else if(key_data == 8'h14) ctrlf <= 1'b1;
                        else begin                               
                            key_count <= key_count + 8'b1;
                            cur_key <= key_data;
                            if(key_data == 8'h58) caps <= ~caps;
                            else begin
                                buf_char <= key_data;
                                buf_now <= buf_now + 1;
                            end
                        end
                    end
                    else if(clk_2hz != clk_2hz_last && key_data != 8'h58) begin
                        buf_char <= key_data;
                        buf_now <= buf_now + 1;
                    end
                end
                clk_2hz_last <= clk_2hz;
                nextdata_n <= 1'b0;
            end
        end
        else begin
            nextdata_n <= 1'b1;
            last_key <= key_data;
        end
    end
       
    //vga
    wire vga_clk;
    wire [11:0] vga_data;
    reg [11:0] vga_d;
    wire [9:0] h_addr, v_addr;
    wire valid;
    assign vga_data = valid ? vga_d : 12'b0;
    clkgen #(25000000) my_vgaclk(CLK100MHZ, 1'b0, 1'b1, vga_clk);   
    vga_ctrl my_vgactrl(vga_clk, 1'b0, vga_data, h_addr, v_addr, VGA_HS, VGA_VS, valid, VGA_R, VGA_G, VGA_B);

    //vga_data controller
    reg [11:0] line_offset = 12'b0, line_offset_l = 12'b0;  //for scrolling screen
    reg [11:0] cursor_h = 12'b0, cursor_v = 12'b0, cursor_l = 12'b0;
    reg [11:0] endl[30:0];
    
    reg [11:0] print_h = 12'b0, print_v = 12'b0, print_l = 12'b0;  //location in key_reg, offset + real location = location in key_reg 
    reg [4:0] char_h = 5'b0, char_v = 5'b0;    //location inside the character
    
    reg [7:0] print_asc;
    reg [11:0] line_d;
    
    parameter bound_v = 71 * 29;
    always @(posedge vga_clk) begin  //use alwasy@(vga_clk) and if(vga_clk) would be wrong
            if(valid) begin 
                if(!h_addr)begin
                    if(char_v == 5'b1111) begin
                        char_v <= 5'b0;
                        if(print_v == bound_v) begin 
                            print_v <= 12'b0;
                            print_l <= 12'b0;
                        end
                        else begin 
                            print_v <= print_v + 71;
                            print_l <= print_l + 1;
                        end
                    end
                    else char_v <= char_v + 1;
                    
                    if(!v_addr) begin 
                        print_v <= line_offset;
                        print_l <= line_offset_l;
                    end
                    print_h = 12'b0;
                end
                else if(char_h == 5'b1000) begin
                    char_h <= 5'b0;
                    print_h <= print_h + 1;
                end
                else char_h <= char_h + 1;
            end
            
            if(open) begin
                print_asc = key_reg_open[print_h + print_v];
                line_d = ascii_reg[{print_asc, 4'b0} + char_v];
            end
            else begin
                print_asc = key_reg[print_h + print_v];
                if(clk_2hz && print_h == cursor_h && print_v == cursor_v && char_v == 5'b1101) line_d = 12'h0fe;
                else if(print_h < endl[print_l]) line_d = ascii_reg[{print_asc, 4'b0} + char_v]; //use char_v
                else line_d = 12'b0;
            end
            vga_d = line_d[char_h] ? 12'hfff: 12'b0;
        end
  
    
    //lab12, output reg and event
    reg [7:0] ans[31:0][18:0];
    reg [4:0] ev_flag = 5'b1;
    reg [4:0] ev_read = 4'b0;
          
    always @(negedge vga_clk) begin
        if((buf_char && buf_done != buf_now) || ev_flag) begin  //deal with buf in negedge
            //lab12
            if(ev_flag) begin
                ev_read = ev_read + 1;
                if(ans[ev_flag - 1][ev_read] == 8'b0) begin
                    ev_flag = ev_flag == 4'b1 ? 4'b0 : 4'b1;
                    ev_read = 4'b0;
                    buf_deal = 8'b0;
                 end
                 buf_deal = ans[ev_flag - 1][ev_read];
            end
            else begin 
                buf_deal = ascii_key;
                buf_done = buf_now;
            end
            
            if(buf_deal == 8'h08) begin  //backspace
                if(cursor_h == 12'd4) begin    //modified in lab12      
                    /*if(cursor_v != line_offset) begin //one line back, else nothing changes
                        cursor_v = cursor_v == 12'b0 ? bound_v : cursor_v - 71;
                        cursor_l = cursor_l == 12'b0 ? 29 : cursor_l - 1;
                        cursor_h = endl[cursor_l]; //first empty char
                        if(cursor_h == 12'd71) begin
                            cursor_h = cursor_h - 1;
                            endl[cursor_l] = endl[cursor_l] - 1;
                        end
                    end*/
                end 
                else begin 
                    cursor_h = cursor_h - 1;
                    endl[cursor_l] = endl[cursor_l] - 1;
                end
                key_reg[cursor_h + cursor_v] = 8'b0;
            end 
            else if(buf_deal == 8'h0d) begin //enter
                //lab12, check program
                if(ev_flag != 0) begin end
                else begin if(endl[cursor_l] == 9 && key_reg[cursor_v + 4] == 8'h68 
                                       && key_reg[cursor_v + 5] == 8'h65
                                       && key_reg[cursor_v + 6] == 8'h6c
                                       && key_reg[cursor_v + 7] == 8'h6c
                                       && key_reg[cursor_v + 8] == 8'h6f)
                    begin ev_flag = 5'b00010; end 
                else if(endl[cursor_l] == 8 && key_reg[cursor_v + 4] == 8'h74
                                            && key_reg[cursor_v + 5] == 8'h69
                                            && key_reg[cursor_v + 6] == 8'h6d
                                            && key_reg[cursor_v + 7] == 8'h65) 
                    begin ev_flag = 5'b00011; end
                else if(endl[cursor_l] == 9 && key_reg[cursor_v + 4] == 8'h66
                                            && key_reg[cursor_v + 5] == 8'h69
                                            && key_reg[cursor_v + 6] == 8'h62
                                            && key_reg[cursor_v + 7] == 8'h20) 
                    begin ev_flag = 5'b00101 + (key_reg[cursor_v + 8] - 8'h30); end
                else if(endl[cursor_l] == 10 && key_reg[cursor_v + 4] == 8'h66
                                            && key_reg[cursor_v + 5] == 8'h69
                                            && key_reg[cursor_v + 6] == 8'h62
                                            && key_reg[cursor_v + 7] == 8'h20) 
                    begin ev_flag = 5'b01111 + (key_reg[cursor_v + 9] - 8'h30); end
                else if(endl[cursor_l] == 9 && key_reg[cursor_v + 4] == 8'h6c
                                            && key_reg[cursor_v + 5] == 8'h65
                                            && key_reg[cursor_v + 6] == 8'h64
                                            && key_reg[cursor_v + 7] == 8'h6f
                                            && key_reg[cursor_v + 8] == 8'h6e) 
                    begin ledon = 1; ev_flag = 5'b00001;end
                else if(endl[cursor_l] == 10 && key_reg[cursor_v + 4] == 8'h6c
                                            && key_reg[cursor_v + 5] == 8'h65
                                            && key_reg[cursor_v + 6] == 8'h64
                                            && key_reg[cursor_v + 7] == 8'h6f
                                            && key_reg[cursor_v + 8] == 8'h66
                                            && key_reg[cursor_v + 9] == 8'h66) 
                    begin ledon = 0; ev_flag = 5'b00001; end
                else if(endl[cursor_l] == 4)
                    begin ev_flag = 5'b00001; end
                else
                    begin ev_flag = 5'b00100; end
                end
                
                //enter
                cursor_h = 12'd0;
                if(cursor_v == bound_v) begin
                    cursor_v = 12'b0; 
                    cursor_l = 12'b0;
                end
                else begin 
                    cursor_v = cursor_v + 71;
                    cursor_l = cursor_l + 1;
                end
                    
                if(cursor_v == line_offset) begin
                    endl[cursor_l] = 12'b0;
                    line_offset = line_offset == bound_v ? 12'b0 : line_offset + 71;
                    line_offset_l = line_offset_l == 29 ? 12'b0 : line_offset_l + 1;
                end
             
            end 
            else if(buf_deal != 0) begin  //normal char
                key_reg[cursor_h + cursor_v] = buf_deal;
                endl[cursor_l] = cursor_h + 1;
                if(cursor_h == 12'd70) begin   //auto newline
                    cursor_h = 12'd0;
                    if(cursor_v == bound_v) begin
                        cursor_v = 12'b0; 
                        cursor_l = 12'b0;
                    end
                    else begin 
                        cursor_v = cursor_v + 71;
                        cursor_l = cursor_l + 1;
                    end
                    
                    if(cursor_v == line_offset) begin
                        endl[cursor_l] = 12'b0;
                        line_offset = line_offset == bound_v ? 12'b0 : line_offset + 71;
                        line_offset_l = line_offset_l == 29 ? 12'b0 : line_offset_l + 1;
                    end
                end 
                else cursor_h = cursor_h + 1;
            end
        end
    end
    
    //initial arrays
    initial begin
        //prompt
        ans[0][1] = 8'h58;
        ans[0][2] = 8'h59;
        ans[0][3] = 8'h59;
        ans[0][4] = 8'h3e;
        ans[0][5] = 8'b0;
        //Hello World!
        ans[1][1] = 8'h48;
        ans[1][2] = 8'h65;
        ans[1][3] = 8'h6c;
        ans[1][4] = 8'h6c;
        ans[1][5] = 8'h6f;
        ans[1][6] = 8'h20;
        ans[1][7] = 8'h57;
        ans[1][8] = 8'h6f;
        ans[1][9] = 8'h72;
        ans[1][10] = 8'h6c;
        ans[1][11] = 8'h64;
        ans[1][12] = 8'h21;
        ans[1][13] = 8'h0d;
        ans[1][14] = 8'b0;
        //2023, 2, 23
        ans[2][1] = 8'h32;
        ans[2][2] = 8'h30;
        ans[2][3] = 8'h32;
        ans[2][4] = 8'h33;
        ans[2][5] = 8'h2c;
        ans[2][6] = 8'h20;
        ans[2][7] = 8'h32;
        ans[2][8] = 8'h2c;
        ans[2][9] = 8'h20;
        ans[2][10] = 8'h32;
        ans[2][11] = 8'h33;
        ans[2][12] = 8'h0d;
        ans[2][13] = 8'h0;
        //Unknown Command
        ans[3][1] = 8'h55;
        ans[3][2] = 8'h6e;
        ans[3][3] = 8'h6b;
        ans[3][4] = 8'h6e;
        ans[3][5] = 8'h6f;
        ans[3][6] = 8'h77;
        ans[3][7] = 8'h6e;
        ans[3][8] = 8'h20;
        ans[3][9] = 8'h43;
        ans[3][10] = 8'h6f;
        ans[3][11] = 8'h6d;
        ans[3][12] = 8'h6d;
        ans[3][13] = 8'h61;
        ans[3][14] = 8'h6e;
        ans[3][15] = 8'h64;
        ans[3][16] = 8'h0d;
        ans[3][17] = 8'h0;       
//0
ans[4][0] = 8'd0;
ans[4][1] = 8'd48;
ans[4][2]=8'd13;
ans[4][3]= 8'd0;
//1
ans[5][0] = 8'd0;
ans[5][1] = 8'd49;
ans[5][2]=8'd13;
ans[5][3]= 8'd0;
//2
ans[6][0] = 8'd0;
ans[6][1] = 8'd49;
ans[6][2]=8'd13;
ans[6][3]= 8'd0;
//3
ans[7][0] = 8'd0;
ans[7][1] = 8'h32;
ans[7][2]=8'd13;
ans[7][3]= 8'd0;
//4
ans[8][0] = 8'd0;
ans[8][1] = 8'h33;
ans[8][2]=8'd13;
ans[8][3]= 8'd0;
//5 
ans[9][0] = 8'd0;
ans[9][1] = 8'h35;
ans[9][2]=8'd13;
ans[9][3]= 8'd0;
//6
ans[10][0] = 8'd0;
ans[10][1] = 8'h38;
ans[10][2]=8'd13;
ans[10][3]= 8'd0;
//7
ans[11][0] = 8'd0;
ans[11][1] = 8'h31;
ans[11][2]=8'h33;
ans[11][3]= 8'd13;
ans[11][4]=8'd0;
//8
ans[12][0] = 8'd0;
ans[12][1] = 8'h32;
ans[12][2]=8'h31;
ans[12][3]= 8'd13;
ans[12][4]=8'd0;
//9
ans[13][0] = 8'd0;
ans[13][1] = 8'h33;
ans[13][2]=8'h34;
ans[13][3]= 8'd13;
ans[13][4]=8'd0;
//10
ans[14][0] = 8'd0;
ans[14][1] = 8'h35;
ans[14][2]=8'h35;
ans[14][3]= 8'd13;
ans[14][4]=8'd0;
//11
ans[15][0] = 8'd0;
ans[15][1] = 8'h38;
ans[15][2]=8'h39;
ans[15][3]= 8'd13;
ans[15][4]=8'd0;
//12
ans[16][0] = 8'd0;
ans[16][1] = 8'h31;
ans[16][2]=8'h34;
ans[16][3]= 8'h34;
ans[16][4]=8'd13;
ans[16][5]=8'd0;
//13
ans[17][0] = 8'd0;
ans[17][1] = 8'h32;
ans[17][2]=8'h33;
ans[17][3]= 8'h33;
ans[17][4]=8'd13;
ans[17][5]=8'd0;
//14
ans[18][0] = 8'd0;
ans[18][1] = 8'h33;
ans[18][2]=8'h37;
ans[18][3]= 8'h37;
ans[18][4]=8'd13;
ans[18][5]=8'd0;
//15
ans[19][0] = 8'd0;
ans[19][1] = 8'h36;
ans[19][2]=8'h31;
ans[19][3]= 8'h30;
ans[19][4]=8'd13;
ans[19][5]=8'd0;
//16
ans[20][0] = 8'd0;
ans[20][1] = 8'h39;
ans[20][2]=8'h38;
ans[20][3]= 8'h37;
ans[20][4]=8'd13;
ans[20][5]=8'd0;
//17
ans[21][0] = 8'd0;
ans[21][1] = 8'h31;
ans[21][2]=8'h35;
ans[21][3]= 8'h39;
ans[21][4]=8'h37;
ans[21][5]=8'd13;
ans[21][6]=8'd0;
//18
ans[22][0] = 8'd0;
ans[22][1] = 8'h32;
ans[22][2]=8'h35;
ans[22][3]= 8'h38;
ans[22][4]=8'h34;
ans[22][5]=8'd13;
ans[22][6]=8'd0;
//19
ans[23][0] = 8'd0;
ans[23][1] = 8'h34;
ans[23][2]=8'h31;
ans[23][3]=8'h38;
ans[23][4]=8'h31;
ans[23][5]=8'd13;
ans[23][6]=8'd0;


        $readmemh("D:/CS/lab/lab09/open.txt", key_reg_open);
        for(i = 0;i < 2106;i = i+1)
            key_reg[i] = 8'b0;
        for(i = 0;i < 30;i = i+1)
            endl[i] = 8'b0;
    end
endmodule
