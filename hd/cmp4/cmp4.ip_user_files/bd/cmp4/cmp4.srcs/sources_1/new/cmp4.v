`timescale 1ns / 1ps

module cmp4(
	A0, A1, A2, A3,
	B0, B1, B2, B3,
	YG, YL, YE
    );
    
    input A0, A1, A2, A3, B0, B1, B2, B3;
    output YG, YL, YE;
    wire YG0, YG1, YG2, YG3, YL0, YL1, YL2, YL3, YE0, YE1, YE2, YE3;
    
    cmp cmp_inst0(
    	.A(A0),
    	.B(B0),
    	.YG(YG0),
    	.YL(YL0),
    	.YE(YE0)
    );
    cmp cmp_inst1(
    	.A(A1),
    	.B(B1),
    	.YG(YG1),
    	.YL(YL1),
    	.YE(YE1)
    );
    cmp cmp_inst2(
    	.A(A2),
    	.B(B2),
    	.YG(YG2),
    	.YL(YL2),
    	.YE(YE2)
    );
    cmp cmp_inst3(
    	.A(A3),
    	.B(B3),
    	.YG(YG3),
    	.YL(YL3),
    	.YE(YE3)
    );
    
    assign YE = YE0 & YE1 & YE2 & YE3;
    assign YG = (((((YG0 & YE1) | YG1) & YE2) | YG2) & YE3) | YG3;
    assign YL = (((((YL0 & YE1) | YL1) & YE2) | YL2) & YE3) | YL3;
endmodule
