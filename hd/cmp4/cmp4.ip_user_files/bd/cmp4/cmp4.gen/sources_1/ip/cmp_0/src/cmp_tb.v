`timescale 1ns / 1ps
module cmp_tb();
	wire A, B, YG, YL, YE;
	
	cmp cmp_inst0(
		.A(A), .B(B),
		.YG(YG), .YL(YL), .YE(YE)
	);
	
	reg[2:0] cnt;
	
	assign {A, B} = cnt[1:0];
	initial begin
		cnt = 'b0;
		repeat(4) begin
			#10;
			cnt = cnt + 1'b1;
		end 
	end
endmodule
