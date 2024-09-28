`timescale 1ns / 1ps

module mux4_tb();
	wire d0, d1, d2, d3, s0, s1, y;
	mux4_wrapper mux4_inst0(
		.D0(d0),
		.D1(d1),
		.D2(d2),
		.D3(d3),
		.S0(s0),
		.S1(s1),
		.Y(y)
	);
	reg [5:0] counter;
	assign d0 = counter[0];
	assign d1 = counter[1];
	assign d2 = counter[2];
	assign d3 = counter[3];
	assign s0 = counter[4];
	assign s1 = counter[5];
	initial begin
		counter = 'b0;
		repeat(63) begin
			#10;
			counter = counter + 1'b1;
		end
	end
endmodule