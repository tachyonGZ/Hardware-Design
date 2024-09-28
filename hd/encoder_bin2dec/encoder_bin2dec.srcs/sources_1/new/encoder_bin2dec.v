`timescale 1ns / 1ps
module encoder_bin2dec(input[9:0] I, output[3:0]Y);
	assign Y[0] = I[1] | I [3] | I[5] | I[7] | I[9];
	assign Y[1] = I[2] | I[3] | I[6] | I[7];
	assign Y[2] = I[4] | I[5] | I[6] | I[7];
	assign Y[3] = I[8] | I[9];
endmodule