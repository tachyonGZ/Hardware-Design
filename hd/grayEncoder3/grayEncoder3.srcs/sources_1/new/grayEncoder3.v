`timescale 1ns / 1ps
module grayEncoder3(bin, gray);
	input[2:0] bin;
	output[2:0] gray;
	
	wire[2:0] temp;
	wire[2:0] gray;
	
	assign temp = bin >> 1;
	assign gray[2] = bin[2];
	assign gray[1:0] = temp[1:0] ^ bin[1:0];
endmodule
