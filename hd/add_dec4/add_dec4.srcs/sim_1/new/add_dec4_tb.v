`timescale 1ns / 1ps
module add_dec4_tb();
	reg[3:0] A0, A1, A2, A3, B0, B1, B2, B3;
	reg cin;
	wire[3:0] Y0, Y1, Y2, Y3;
	wire cout;
	
	add_dec4_wrapper add_dec4_wrapper_i0(
		A0, A1, A2, A3, 
		B0, B1, B2, B3, 
		Y0, Y1, Y2, Y3, 
		cin, cout
	);  
	
	initial begin
		A0 = 'b0100; A1 = 'b0011; A2 = 'b0010; A3 = 'b0001;
		B0 = 'b1000; B1 = 'b0111; B2 = 'b0110; B3 = 'b0101;
		cin = 1;
	end
endmodule
