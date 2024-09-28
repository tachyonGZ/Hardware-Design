`timescale 1ns / 1ps
module mux2(
	input A,
	input B ,
	input S,
	output Y
	);
	
	wire ns, sa, sb;
	
	assign ns = !S;
	assign sa = A & ns;
	assign sb = B & S;
	assign Y = sa | sb;
endmodule
