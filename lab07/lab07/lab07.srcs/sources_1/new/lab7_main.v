`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/08 15:38:11
// Design Name: 
// Module Name: lab7_main
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

module keyboard(input clk,
	input clrn,
	input ps2_clk,
	input ps2_data,
	output [7:0] AN,
	output [7:0] HEX);

// add your definitions here
reg  state;
wire [7:0] keydata;
wire ready;
reg nextdata_n;
wire overflow;
reg jump;
reg [7:0] key_count;
reg [7:0] cur_key;
wire [7:0] ascii_key;

//----DO NOT CHANGE BEGIN----
//scancode to ascii conversion, will be initialized by the testbench
scancode_ram myram(clk, cur_key, ascii_key);
//PS2 interface, you may need to specify the inputs and outputs
ps2_keyboard mykey(clk, clrn, ps2_clk, ps2_data, keydata, ready, nextdata_n, overflow);
//---DO NOT CHANGE END-----

//segment 
sevenseg my_7seg(clk_10k, 8'b00111111, {8'b0, key_count, ascii_key, cur_key}, AN, HEX);
// add you code here
initial
begin
    key_count = 8'b0;
    cur_key = 8'b0;
    //ascii_key = 8'b0;
    state = 0;
    nextdata_n = 1'b0;
    //keydata = 8'b0;
    jump = 1'b0;
end

    always @(posedge clk) begin
        if (!clrn) begin
            key_count <= 8'b0;
            cur_key <= 8'b0;
            nextdata_n <= 1'b1;
            state <= 0;
            jump <= 1'b0;
        end
        else begin 
           // nextdata_n <= 1'b1;
            if(ready)
            begin
                
                if (keydata == 8'hf0)
                begin
                    state <= 1'b0;
                    //cur_key <= 8'b0;
                    jump <= 1'b1;
                end
                else
                begin
                    if (state == 1'b0)//
                    begin
                        if (jump == 1'b1 && keydata == cur_key)//
                        begin 
                            cur_key <= 8'b0;
                            state <= 1'b0;
                            jump <= 1'b0;//
                            //key_count <= key_count + 10;
                        end
                        else begin//
                            key_count <= key_count + 1;
                            cur_key <= keydata;
                            state <= 1'b1;
                        end
                    end
                    else begin//
                        cur_key <= keydata;
                        //key_count <= key_count + 10;
                        state <= 1'b1;
                    end
                end
                 //nextdata_n <= 1'b0;  
            end  
        end
    end
endmodule


//standard ps2 interface, you can keep this
module ps2_keyboard(clk,clrn,ps2_clk,ps2_data,data,ready,nextdata_n,overflow);
    input clk,clrn,ps2_clk,ps2_data;
	 input nextdata_n;
    output [7:0] data;
    output reg ready;
    output reg overflow;     // fifo overflow  
    // internal signal, for test
    reg [9:0] buffer;        // ps2_data bits
    reg [7:0] fifo[7:0];     // data fifo
	 reg [2:0] w_ptr,r_ptr;   // fifo write and read pointers	
    reg [3:0] count;  // count ps2_data bits
    // detect falling edge of ps2_clk
    reg [2:0] ps2_clk_sync;
    
    always @(posedge clk) begin
        ps2_clk_sync <=  {ps2_clk_sync[1:0],ps2_clk};
    end

    wire sampling = ps2_clk_sync[2] & ~ps2_clk_sync[1];
    
    always @(posedge clk) begin
        if (clrn == 0) begin // reset 
            count <= 0; w_ptr <= 0; r_ptr <= 0; overflow <= 0; ready<= 0;
        end 
		else if (sampling) begin
            if (count == 4'd10) begin
                if ((buffer[0] == 0) &&  // start bit
                    (ps2_data)       &&  // stop bit
                    (^buffer[9:1])) begin      // odd  parity
                    fifo[w_ptr] <= buffer[8:1];  // kbd scan code
                    w_ptr <= w_ptr+3'b1;
                    ready <= 1'b1;
                    overflow <= overflow | (r_ptr == (w_ptr + 3'b1));
                end
                count <= 0;     // for next
            end else begin
                buffer[count] <= ps2_data;  // store ps2_data 
                count <= count + 3'b1;
            end      
        end
        if ( ready ) begin // read to output next data
				if(nextdata_n == 1'b0) //read next data
				begin
				   r_ptr <= r_ptr + 3'b1; 
					if(w_ptr==(r_ptr+1'b1)) //empty
					     ready <= 1'b0;
				end           
        end
    end

    assign data = fifo[r_ptr];
endmodule 

//simple scancode converter
module scancode_ram(clk, addr,outdata);
input clk;
input [7:0] addr;
output reg [7:0] outdata;

//Do not change the name of this ram, testbench will initialize this
reg [7:0] ascii_tab[255:0];
initial
	begin
	   $readmemh("H:/DigitalLab/lab07/scancode.txt", ascii_tab, 0, 255);
	end
always @(posedge clk)
begin
      outdata <= ascii_tab[addr];
end

endmodule