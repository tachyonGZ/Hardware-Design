`timescale 1ns / 1ps
module encoder_bin2dec_tb();
	reg[9:0] I;
	wire[3:0] Y;
	
	encoder_bin2dec encoder_bin2dec_i0(I, Y);
	
	initial begin
		I = 10'b1;
		repeat(9) begin
			#10;
			I = I << 1;
		end
	end
endmodule
