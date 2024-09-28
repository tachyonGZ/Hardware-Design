`timescale 1ns / 1ps

module segDec(input[3:0] num, output[6:0] ag);
	reg [6:0] ag;
	always@(num)
	case (num)
		4'd0 : ag = 7'b111_1110;
		4'd1 : ag = 7'b011_0000;
		4'd2 : ag = 7'b110_1101;
		4'd3 : ag = 7'b111_1100;
		4'd4 : ag = 7'b011_0011;
		4'd5 : ag = 7'b101_1011;
		4'd6 : ag = 7'b101_1111;
		4'd7 : ag = 7'b111_0000;
		4'd8 : ag = 7'b111_1111;
		4'd9 : ag = 7'b111_1011;
		default : ag = 7'b000_0001;
	endcase;
endmodule
