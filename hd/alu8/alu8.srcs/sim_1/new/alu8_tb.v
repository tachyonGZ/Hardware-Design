`timescale 1ns / 1ps

module alu8_tb();
	reg[7:0] a, b;
	reg[2:0]s;
	wire[7:0] out;
	
	alu8 alu8_i0(a, b, s, out);
	
	initial begin
		a = 8'h0A;
		b = 8'h0C;
		s = 3'b0;
		repeat(5) begin
			#10;
			s = s + 3'b1;
		end
	end
endmodule
