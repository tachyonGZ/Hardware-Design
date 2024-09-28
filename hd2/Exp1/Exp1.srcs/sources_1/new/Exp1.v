`timescale 1ns / 1ps

module Exp1(input wire clk, output reg[7:0] seg, output reg[2:0] sel);
	initial begin
		sel = 3'b000;
		seg = 8'b0000_0000;
	end
	
	always @(posedge clk)
	begin
		case(sel)
			3'b000 : begin 
				sel <= 3'b001;			//第二个位置
				seg <= 8'b0000_0110;	//数字1
			end
			3'b001 : begin 
				sel <= 3'b010;			//第三个位置
				seg <= 8'b0011_1111;	//数字0
			end
			3'b010 : begin 
				sel <= 3'b000;			//第一个位置
				seg <= 8'b0000_0110;	//数字1
			end
		endcase
	end
endmodule
