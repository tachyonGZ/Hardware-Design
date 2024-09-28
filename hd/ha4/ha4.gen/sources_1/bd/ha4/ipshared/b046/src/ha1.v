`timescale 1ns / 1ps

module ha1(
	input ia,
	input ib,
	output sum,
	output cout
	);
	
	assign {cout, sum} = ia + ib;
endmodule

