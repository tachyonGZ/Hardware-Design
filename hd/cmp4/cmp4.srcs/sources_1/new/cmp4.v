`timescale 1ns / 1ps
	
module cmp4(input[3:0] A, input[3:0] B, output YG, output YL, output YE);
	wire[3:0] YGt, YLt, YEt;
	cmp_0 cmp_inst0(A[0], B[0], YGt[0], YLt[0], YEt[0]);
	cmp_0 cmp_inst1(A[1], B[1], YGt[1], YLt[1], YEt[1]);
	cmp_0 cmp_inst2(A[2], B[2], YGt[2], YLt[2], YEt[2]);
	
	assign YE = YEt[3] & YEt[2] & YEt[0] & YEt[0];
	assign YG = (((((YGt[0] & YEt[1]) | YGt[1]) & YEt[2]) | YGt[2]) & YEt[3]) | YGt[3];
	assign YG = (((((YLt[0] & YEt[1]) | YLt[1]) & YEt[2]) | YLt[2]) & YEt[3]) | YLt[3];
endmodule 
