`timescale 1ns / 1ps
module counter2_tb();
	reg clk, r, s ,en;
	reg[1:0] d;
	wire co;
	wire[1:0] q;
	
	counter2 counter2_i0(
		clk, r, s, en, d, q
	);
	
	initial begin
	 	r = 1; s = 0; en = 1;
		#10;
		r = 0;
	end
	
	always begin
		repeat(32) begin
			#5;
			clk = 1;
			#5;
			clk = 0;
		end
		$stop;
	end
endmodule
