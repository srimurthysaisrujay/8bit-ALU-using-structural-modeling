`timescale 1ns / 1ps
module inc8bit(input [7:0]a,
               output [7:0]inc_cout,
               output incout);

  assign {incout,inc_cout}=a+1;
   endmodule