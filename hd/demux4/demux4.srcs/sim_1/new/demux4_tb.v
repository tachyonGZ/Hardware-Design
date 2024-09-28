`timescale 1ns / 1ps

module demux4_tb();
	wire D, A0, A1, Y0, Y1, Y2, Y3;
	demux4_wrapper demux4_inst0(
		.D(D), .A0(A0), .A1(A1),
		.Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3)
	);
	
	reg[3:0] cnt;
	assign {D, A1, A0} = cnt[2:0];
	initial begin
		cnt = 'b0;
		repeat(8) begin
			#10;
			cnt = cnt + 1;
		end
	end
endmodule
