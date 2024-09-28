`timescale 1ns / 1ps

module ha4_tb();
	reg[3:0] A, B;
	wire[3:0] sum;
	wire cout;
	
	ha4_wrapper ha4_wrapper_i0(
		cout,
		A[0], A[1], A[2], A[3],
		B[0], B[1], B[2], B[3],
		sum[0], sum[1], sum[2], sum[3]
	);

	initial begin
		A = 4'b1100;
		B = 4'b1010;
	end
endmodule
