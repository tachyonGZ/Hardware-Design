`timescale 1ns / 1ps

module cmp4_tb();
	reg A0, A1, A2, A3, B0, B1, B2, B3;
	wire YG, YL, YE;
	
	cmp4 cmp4_inst0(
		.A0(A0), .A1(A1), .A2(A2), .A3(A3),
		.B0(B0), .B1(B1), .B2(B2), .B3(B3),
		.YG(YG), .YL(YL), .YE(YE)
	);
	
	initial begin
		A3 = 1; B3 = 0;
		#10;
		A3 = 0; B3 = 1;
		#10; 
		A3 = 0; B3 = 0;  
	end
	
	initial begin
		#20;	
		A2 = 1; B2 = 0;
		#10;
		A2 = 0; B2 = 1;
		#10; 
		A2 = 0; B2 = 0;  
	end
	
	initial begin
		#40
		A1 = 1; B1 = 0;
		#10;
		A1 = 0; B1 = 1;
		#10; 
		A1 = 0; B1 = 0;  
	end
	
	initial begin
		#60
		A0 = 1; B0 = 0;
		#10;
		A0 = 0; B0 = 1;
		#10; 
		A0 = 0; B0 = 0;  
	end
endmodule
