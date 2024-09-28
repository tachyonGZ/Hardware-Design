`timescale 1ns / 1ps
module cmp(
	A, B,
	YG, YL, YE
    );
    
    input A, B;
    output YG, YL, YE;
    
    assign YG = A & ~B;
    assign YL = ~A & B;
    assign YE = ~(A ^ B);
endmodule
