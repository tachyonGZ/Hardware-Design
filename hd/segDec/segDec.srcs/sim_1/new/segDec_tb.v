`timescale 1ns / 1ps

module segDec_tb();
	wire[3:0] num;
	wire[6:0] ag;
	
	segDec segDec_i0(num, ag);
	
	reg[3:0] cnt;
	
	assign num = cnt;
	
	initial begin
		cnt = 4'b0;
		repeat(9) begin
			#10;
			cnt = cnt + 4'b1;
		end
	end
endmodule
