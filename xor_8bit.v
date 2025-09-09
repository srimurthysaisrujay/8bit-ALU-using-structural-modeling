`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 19:30:27
// Design Name: 
// Module Name: xor_8bit
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


module xor8bit(input [7:0] a,
                 input [7:0]b,
                 output [7:0]xorout
    );
    assign xorout=a^b;
endmodule
