`timescale 1ns / 1ps
module add8bit(input [7:0]a,
               input [7:0]b,
               input cin,
               output [7:0] sum,
               output addcout);

  assign  {sum,addcout}=a+b+cin;
  
  
               
endmodule
