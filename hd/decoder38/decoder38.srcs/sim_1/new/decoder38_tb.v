`timescale 1ns / 1ps

module decoder38_tb();
	reg[2:0] A;
	wire[7:0] Y;
	
	decoder38 decoder38_inst0(A, Y);
	
	initial begin
		A = 3'b0;
		repeat(7) begin
			#10;
			A = A + 1;
		end
	end
endmodule
