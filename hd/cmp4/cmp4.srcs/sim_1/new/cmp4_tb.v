`timescale 1ns / 1ps
module cmp4_tb();
	reg[3:0] A, B;
	wire YG, YL, YE;
	cmp4 cmp4_inst0(A, B, YG, YL, YE);
	initial begin
		A[3] = 1; B[3] = 0;
		#10;
		A[3] = 0; B[3] = 1;
		#10; 
		A[3] = 0; B[3] = 0;  
	end
	initial begin
		#20;	
		A[2] = 1; B[2] = 0;
		#10;
		A[2] = 0; B[2] = 1;
		#10; 
		A[2] = 0; B[2] = 0;  
	end
	initial begin
		#40
		A[1] = 1; B[1] = 0;
		#10;
		A[1] = 0; B[1] = 1;
		#10; 
		A[1] = 0; B[1] = 0;  
	end
	initial begin
		#60
		A[0] = 1; B[0] = 0;
		#10;
		A[0] = 0; B[0] = 1;
		#10; 
		A[0] = 0; B[0] = 0;  
	end
endmodule
