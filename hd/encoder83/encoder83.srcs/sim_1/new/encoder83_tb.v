`timescale 1ns / 1ps
module encoder83_tb();
	reg[7:0] I;
	wire[2:0] Y;
	
	encoder83 encoder83_i0(I, Y);
	initial begin
		I = 8'b1;
		repeat(7) begin
			#10;
			I = I << 1;
		end
	end
endmodule
