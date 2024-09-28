`timescale 1ns / 1ps

module decoder_dec2bin_tb();
	reg[3:0] A;
	wire[9:0] Y;
	
	decoder_dec2bin decoder_dec2bin_i0(A, Y);
	
	initial begin
		A = 4'b0;
		repeat(9) begin
			#10;
			A = A + 1;
		end
	end
endmodule