# 8bit-ALU-using-structural-modeling
8-bit ALU in Verilog (structural modeling) with submodules for add, sub, AND, OR, NOT, increment, and decrement. Supports 4-bit opcode &amp; enable control. Verified with custom testbench in Vivado, with waveforms &amp; synthesis confirming functionality.
About the Project

This is an 8-bit Arithmetic Logic Unit (ALU) that I designed in Verilog HDL. The ALU is built in a structural modeling style, which means I wrote small submodules for each operation (adder, subtractor, AND, OR, NOT, increment, decrement) and then connected them together in a top module. A 4-bit opcode decides which operation runs, and there’s also an enable signal to turn the ALU on/off.

What it Can Do

Perform basic arithmetic: add, subtract, increment, decrement

Perform logic operations: AND, OR, NOT

Works on 8-bit inputs (a and b)

Gives a carry out in addition

Easy to extend into a bigger datapath

How I Tested It

I wrote a simple testbench (alu_tb.v) where I gave different values to a, b and changed the opcode. I simulated it in Vivado, and checked the waveforms to confirm everything was working. Example:

Opcode	Operation	Example Inputs	Output
1111	ADD	a=11111111, b=11111111	out=11111110, cout=1
1110	SUB	a=00000000, b=00000011	out=11111101
0110	OR	a=11001100, b=00110011	out=11111111
0111	AND	a=11001100, b=00110011	out=00000000
0100	NOT	a=10101010	out=01010101
0101	INC	a=10101101	out=10101110  

How to Run It

Clone the repo:

git clone https://github.com/yourusername/8bit-alu-verilog.git


Run the testbench with Icarus Verilog:

iverilog alu.v alu_tb.v -o alu_tb
vvp alu_tb


Open the waveform:

gtkwave alu_tb.vcd

Why I Did This

I wanted to practice structural modeling in Verilog and get hands-on with submodule integration, since this is how real hardware is built in larger designs. This ALU is a small step toward datapath design and CPU-like architectures.
