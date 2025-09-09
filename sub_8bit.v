`timescale 1ns / 1ps
module sub8bit(input [7:0]a,
        input [7:0]b,
        input cin,
        output [7:0] diff,
        output borr);
        wire [8:0] temp;
        
assign {borr,diff}={1'b0, a} - {1'b0, b}-cin;
assign diff = temp[7:0];
assign borr = temp[8];
endmodule
        