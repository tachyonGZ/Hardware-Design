`timescale 1ns / 1ps

module pencoder38(input[7:0] I, output reg[2:0] Y);
	always@(I)
		casex(I)
			8'b0000_0001: Y = 3'b000;
			8'b0000_001x: Y = 3'b001;
			8'b0000_01xx: Y = 3'b010;
			8'b0000_1xxx: Y = 3'b011;
			8'b0001_xxxx: Y = 3'b100;
			8'b001x_xxxx: Y = 3'b101;
			8'b01xx_xxxx: Y = 3'b110;
			8'b1xxx_xxxx: Y = 3'b111;
		endcase
endmodule