`timescale 1ns / 1ps
module dec8bit(input [7:0]a,
               output  dec_cout,
               output decout);

assign {decout,dec_cout}=a-1;

 endmodule