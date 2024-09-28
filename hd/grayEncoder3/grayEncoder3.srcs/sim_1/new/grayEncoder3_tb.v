`timescale 1ns / 1ps

module grayEncoder3_tb();
	wire[2:0] bin, gray;
	
	grayEncoder3 grayEncoder3_i0(
		.bin(bin), .gray(gray)
	);
	
	reg [2:0] cnt;
	assign bin = cnt;
	
	initial begin
		cnt = 3'b000;
		repeat(7) begin
			#10;
			cnt = cnt + 3'b001;
		end
	end
endmodule
