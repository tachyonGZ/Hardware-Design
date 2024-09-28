`timescale 1ns / 1ps

module pencoder38_tb();
	reg[7:0] I;
	wire[2:0] Y;
	
	pencoder38 pencoder38_i0(I, Y);
	
	integer i;
	initial begin
		for(i = 0; i < 8; i = i + 1) begin
			#10;
			I[i] = 1'b1;
		end
	end
endmodule
