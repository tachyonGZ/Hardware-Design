`timescale 1ns / 1ps
module Exp1tb();
	reg clk;
	
	wire[7:0] seg;
	wire[2:0] sel;
	Exp1 Exp1_inst0(clk, seg, sel);

	initial
		clk = 0;
	always #5 clk = ~clk;	
endmodule
