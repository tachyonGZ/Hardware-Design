`timescale 1ns / 1ps
module Exp4_tb();
	wire[7:0] D, Y, numa_g;
	wire[2:0] _7SEL;
	assign D = 8'b0011_0001;
	
	reg key, clr;
	
	Exp4 Exp4_inst0(D, key, Y, numa_g, _7SEL);
	
	initial begin
		key <= 0;
		clr <= 0;
	end
	
	always @(*) begin
		#5;
		key <= ~key;
	end
	
	
endmodule
