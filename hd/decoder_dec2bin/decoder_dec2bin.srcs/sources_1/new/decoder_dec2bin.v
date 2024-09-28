`timescale 1ns / 1ps
module decoder_dec2bin(input[3:0] A, output[9:0] Y);
	assign Y[0] = ~A[3] & ~A[2] & ~A[1] & ~A[0];
	assign Y[1] = ~A[3] & ~A[2] & ~A[1] & A[0];
	assign Y[2] = ~A[3] & ~A[2] & A[1] & ~A[0];
	assign Y[3] = ~A[3] & ~A[2] & A[1] & A[0];
	assign Y[4] = ~A[3] & A[2] & ~A[1] & ~A[0];
	assign Y[5] = ~A[3] & A[2] & ~A[1] & A[0];
	assign Y[6] = ~A[3] & A[2] & A[1] & ~A[0];
	assign Y[7] = ~A[3] & A[2] & A[1] & A[0];
	assign Y[8] = A[3] & ~A[2] & ~A[1] & ~A[0];
	assign Y[9] = A[3] & ~A[2] & ~A[1] & A[0];
endmodule
