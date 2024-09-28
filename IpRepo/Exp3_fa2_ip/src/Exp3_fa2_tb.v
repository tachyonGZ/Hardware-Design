`timescale 1ns / 1ps
module Exp3_fa2_tb();
	reg[1:0] a, b;
	reg cin;
	
	wire[1:0] s;
	wire cout;
	
	Exp3_fa2 Exp3_fa2_inst0(a, b, cin, s, cout);
	
	initial begin
		repeat (10) begin
			a = $random%4;
			b = $random%4;
			cin = $random%2;
			#5;
		end
	end
endmodule
