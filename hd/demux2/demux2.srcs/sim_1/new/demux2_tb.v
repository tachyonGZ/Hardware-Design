`timescale 1ns / 1ps
module demux2_tb();
	wire D, A, Y0 ,Y1;
	
	demux2 demux2_inst0(
		.D(D), .A(A),
		.Y0(Y0), .Y1(Y1)
	);
	
	reg[2:0] cnt;
	assign {D, A} = cnt[2:0];
	initial begin
		cnt = 'b0;
		repeat(4) begin
			#10;
			cnt = cnt + 1'b1;
		end
	end
endmodule
