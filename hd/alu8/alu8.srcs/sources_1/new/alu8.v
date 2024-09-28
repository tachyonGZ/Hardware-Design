`timescale 1ns / 1ps

module alu8(a, b, s, out);
	input[7:0] a, b;
	input[2:0] s;
	output [7:0] out;
	
	reg[7:0] res;
	assign out = res;
	always@(s) begin
		case (s)
			3'b001: res = a + b;
			3'b010: res = a - b;
			3'b011: res = a & b;
			3'b011: res = a | b;
			3'b100: res = ~a;
			default: res = 8'b0;
		endcase;
	end
endmodule