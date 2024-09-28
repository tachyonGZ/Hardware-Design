`timescale 1ns / 1ps
module Exp3_fa2(input[1:0] a, input[1:0] b, input cin, output[1:0] s, output cout);
	assign {cout, s} = a + b + cin;
endmodule
