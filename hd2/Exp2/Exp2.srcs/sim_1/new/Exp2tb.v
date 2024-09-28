`timescale 1ns / 1ps
module Exp2tb();
	reg clk;
	
	wire[15:0] DOT_R;
	wire[3:0] DOT_C;
	
	Exp2 Exp2_inst0(clk, DOT_R, DOT_C);
	
	initial 
		clk = 0;
	always #1 clk = ~clk;
endmodule
