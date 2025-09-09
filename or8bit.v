module or8bit (input [7:0] a,
        input [7:0]b,
        output [7:0]orout
        );
        
     assign   orout=a|b;
       
        endmodule