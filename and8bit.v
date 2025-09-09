`timescale 1ns / 1ps
module and8bit(input [7:0]a,
               input [7:0]b,
               output  [7:0]andout);
  
assign andout=a&b;
 
endmodule
               