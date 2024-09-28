`timescale 1ns / 1ps

module add_dec_tb();
	reg[3:0] A, B;
	reg cin;
	wire[3:0] Y;
	wire cout;
	
	add_dec add_dec_i0(A, B, cin, Y, cout);
	
	initial begin
		A = 4'b0111;
		B = 4'b1000;
		cin = 1;
	end
endmodule
