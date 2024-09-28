`timescale 1ns / 1ps

module fa1(
	input ia,
	input ib,
	input cin,
	output sum,
	output cout
	);
	
	assign {cout, sum} = ia + ib + cin;
endmodule
