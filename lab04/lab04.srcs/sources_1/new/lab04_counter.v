`timescale 1ns / 1ps

module counter_add_3(
        input clk, en, rst,
        output reg [2:0] count = 3'b0
    );

    always @(posedge clk, posedge rst) begin
        if(rst) count <= 3'b000;
        else if(en) count <= count + 1;
    end
endmodule

module counter_minus_3(
    input clk, en,
    output reg [2:0] count = 3'b000
    );
    
    always @(posedge clk)
        if(en) count <= count - 1;
        else count <= 0;
endmodule

//module done
module counter_p_4(
        input clk, en, rst,
        output reg [3:0] count = 4'b0000,
        output reg rco
    );
    parameter cnt_limit = 10;

    always @(posedge clk, posedge rst) begin
        if(en) begin
            if(rst) count <= 4'b0000;
            else begin
                if(count < cnt_limit - 1) begin
                    count <= count + 1; rco <= 0;
                end
                else begin
                    count <= 4'b0;  rco <= 1;
                end
            end
        end
    end
endmodule