`timescale 1ns / 10ps

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
