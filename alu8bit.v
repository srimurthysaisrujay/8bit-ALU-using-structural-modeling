`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 14:03:27
// Design Name: 
// Module Name: alu8bit
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


module alu8bit(input [7:0]a,b,
               input cin,
               input en,
                input [3:0] opcode,
                output reg[7:0]out,
                output reg cout
    );
    wire [7:0] sum,diff,inc_cout,dec_cout,andout,orout,notout,xorout;
    wire addcout,borr,incout,decout;
    add8bit add(a[7:0],b[7:0],cin,sum[7:0],addcout);
    sub8bit sub(a[7:0],b[7:0],cin,diff[7:0],borr);
    inc8bit inc(a[7:0],inc_cout[7:0],incout);
    dec8bit dec(a[7:0],dec_cout[7:0],decout);
    and8bit an_d(a[7:0],b[7:0],andout[7:0]);
    or8bit o_r(a[7:0],b[7:0],orout[7:0]);
    not8bit no_t(a[7:0],notout[7:0]);
    xor8bit x_or(a[7:0],b[7:0],xorout[7:0]);
    
    always@(*)begin
    if(opcode[3])begin
    case({opcode[2],opcode[1],opcode[0]})
    3'b111:begin
    out[7:0]=sum;
    cout=addcout;
    end
    3'b110:begin
    out[7:0]=diff;
    cout=borr;
    end
    3'b101:begin
    out[7:0]=inc_cout;
    cout=incout;
    end
    3'b100:begin
    out[7:0]=dec_cout;
    cout=decout;
    end
    default:begin
    out[7:0]=8'b00000000;
    end
    endcase
    end
    else begin
    cout=1'b0;
    case({opcode[2],opcode[1],opcode[0]})
    3'b111:out[7:0]=andout;
    3'b110:out[7:0]=orout;
    3'b101:out[7:0]=notout;
    3'b100:out[7:0]=xorout;
    default:begin
    out[7:0]=8'b00000000;
    end
    endcase
    end
    end
    
endmodule
