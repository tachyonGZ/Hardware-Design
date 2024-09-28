`timescale 1ns / 1ps
module Exp3_tb();
	reg[3:0] a;
	reg[3:0] b;
	reg cin;
	wire[3:0] s;
	wire cout;
	Exp3_wrapper Exp3_inst0(a[1:0], a[3:2], b[1:0], b[3:2], cin, s[1:0], s[3:2], cout);
	
	
	initial begin
		repeat (10) begin
			a = $random % 16;
			b = $random % 16;
			cin = $random % 2;
			#5;
		end
	end
endmodule
