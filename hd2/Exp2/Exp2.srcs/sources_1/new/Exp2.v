`timescale 1ns / 1ps
module Exp2(input clk, output reg[15:0]DOT_R, output reg[3:0] DOT_C);
	reg [15:0] word [0:47];
	initial begin
		// 李
		word[0] <= 16'hFEFF;
		word[1] <= 16'hFEFF;
		word[2] <= 16'h8003;
		word[3] <= 16'hFC7F;
		word[4] <= 16'hFABF;
		word[5] <= 16'hF6DF;
		word[6] <= 16'hCEE7;
		word[7] <= 16'h3EF9;
		word[8] <= 16'hF01F;
		word[9] <= 16'hFFBF;
		word[10] <= 16'hFF7F;
		word[11] <= 16'h0001;
		word[12] <= 16'hFEFF;
		word[13] <= 16'hFEFF;
		word[14] <= 16'hFAFF;
		word[15] <= 16'hFDFF;
		// 梓
		word[16] <= 16'hEFBF;
		word[17] <= 16'hEFDF;
		word[18] <= 16'hEE03;
		word[19] <= 16'hEFFF;
		word[20] <= 16'h0377;
		word[21] <= 16'hEFAF;
		word[22] <= 16'hCC01;
		word[23] <= 16'hC7DF;
		word[24] <= 16'hABDF;
		word[25] <= 16'hABDF;
		word[26] <= 16'h6E03;
		word[27] <= 16'hEFDF;
		word[28] <= 16'hEFDF;
		word[29] <= 16'hEFDF;
		word[30] <= 16'hEFDF;
		word[31] <= 16'hEFDF;
		// 涵
		word[32] <= 16'hFFFF;
		word[33] <= 16'hDC07;
		word[34] <= 16'hEFEF;
		word[35] <= 16'hEFDF;
		word[36] <= 16'h7BBB;
		word[37] <= 16'hBAAB;
		word[38] <= 16'hBB1B;
		word[39] <= 16'hEBBB;
		word[40] <= 16'hEB1B;
		word[41] <= 16'hDAAB;
		word[42] <= 16'h19B3;
		word[43] <= 16'hDABB;
		word[44] <= 16'hDB7B;
		word[45] <= 16'hDBFB;
		word[46] <= 16'hD803;
		word[47] <= 16'hFFFB;
	end
	// 分时模块
	reg clk_1;
	integer x = 0;
	always @(posedge clk) begin
		if (4999 == x) begin
			x <= 0;
			clk_1 <= ~clk_1;
		end
		else
			x <= x + 1;
	end
	// 汉字替换模块
	integer n = 0;
	always @(posedge clk_1) begin
		if (32 == n)
			n <= 0;
		else
			n <= n + 16;
	end
	
	// 行打印模块
	reg[3:0] cnt = 4'd0;
	always @(posedge clk) begin
		if (4'd15 == cnt)
			cnt <= 4'd0;
		else
			cnt <= cnt + 4'd1;
			
		DOT_C <= cnt;
		DOT_R <= word[n + cnt];
	end
endmodule
/*
module Exp2(input clk, output reg[15:0]DOT_R, output reg[3:0] DOT_C);
	reg[31:0] cnt;
	
	reg[1:0] sel;
	initial begin
		DOT_C <= 4'b1111;
		sel <= 2'b00;
		cnt <= 32'd0;
	end
	
	always @(posedge clk) begin
		if (cnt == 32'd1000) begin
			cnt <= 32'd0;
			case (sel)
				2'b10 : sel <= 2'b00;
				2'b00 : sel <= 2'b01;
				2'b01 : sel <= 2'b10;
			endcase
		end
		else
			cnt <= cnt + 1'b1;
	end

	always @(posedge clk) begin
		case (DOT_C)
			4'b1111 : begin
				DOT_C <= 4'b0000;	// 1
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_0111_1111;
					2'b01 : DOT_R <= 16'b1111_1011_1110_1111;
					2'b10 : DOT_R <= 16'b1111_1011_1110_1111;
				endcase
			end
			4'b0000 : begin
				DOT_C <= 4'b0001;	// 2
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_0111_1011;
					2'b01 : DOT_R <= 16'b1111_1100_1110_1111;
					2'b10 : DOT_R <= 16'b1111_1011_1001_1111;
				endcase
			end
			4'b0001 : begin
				DOT_C <= 4'b0010;	// 3
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_1011_1011;
					2'b01 : DOT_R <= 16'b1111_1111_0010_1111;
					2'b10 : DOT_R <= 16'b1000_0001_1111_1101;
				endcase
			end
			4'b0010 : begin
				DOT_C <= 4'b0011;	// 4
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_1011_1011;
					2'b01 : DOT_R <= 16'b0000_0000_0000_0000;
					2'b10 : DOT_R <= 16'b1111_1110_0111_0011;
				endcase 
			end
			4'b0011 : begin
				DOT_C <= 4'b0100;	// 5
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0110_1101_1011;
					2'b01 : DOT_R <= 16'b1111_1111_0110_1111;
					2'b10 : DOT_R <= 16'b1111_1111_1111_1111;
				endcase
			end
			4'b0100 : begin
				DOT_C <= 4'b0101;	// 6
				case (sel)
					2'b00 : DOT_R <= 16'b1011_0110_1110_1011;
					2'b01 : DOT_R <= 16'b1111_1100_1110_1111;
					2'b10 : DOT_R <= 16'b1000_0000_0000_1111;
				endcase
			end
			4'b0101 : begin
				DOT_C <= 4'b0110;	// 7
				case (sel)
					2'b00 : DOT_R <= 16'b0111_0110_1111_0011;
					2'b01 : DOT_R <= 16'b1111_1111_1011_1111;
					2'b10 : DOT_R <= 16'b1011_1011_1111_1101;
				endcase
			end
			4'b0110 : begin				
				DOT_C <= 4'b0111;	// 8
				case (sel)
					2'b00 : DOT_R <= 16'b1000_0110_0000_0000;
					2'b01 : DOT_R <= 16'b1111_1011_1011_1011;
					2'b10 : DOT_R <= 16'b1011_0101_1101_1101;
				endcase
			end
			4'b0111 : begin
				DOT_C <= 4'b1000;	// 9
				case (sel)
					2'b00 : DOT_R <= 16'b1111_1111_1111_1111;
					2'b01 : DOT_R <= 16'b1111_1011_1010_1011;
					2'b10 : DOT_R <= 16'b1010_1110_1011_1101;
				endcase
			end
			4'b1000 : begin
				DOT_C <= 4'b1001;	// 10
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0010_1111_0011;
					2'b01 : DOT_R <= 16'b1111_1011_1001_1010;
					2'b10 : DOT_R <= 16'b1011_0000_0000_1101;
				endcase
			end
			4'b1001 : begin
				DOT_C <= 4'b1010;	// 11
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0100_1110_1011;
					2'b01 : DOT_R <= 16'b0000_0000_0011_1001;
					2'b10 : DOT_R <= 16'b1011_1110_1011_0101;
				endcase
			end
			4'b1010 : begin
				DOT_C <= 4'b1011;	// 12
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0110_1101_1011;
					2'b01 : DOT_R <= 16'b1111_1011_1001_1011;
					2'b10 : DOT_R <= 16'b1011_1101_1101_1001;
				endcase	
			end
			4'b1011 : begin
				DOT_C <= 4'b1100;	// 13
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_1011_1011;
					2'b01 : DOT_R <= 16'B1111_1011_1010_1011;
					2'B10 : DOT_R <= 16'b1011_1011_1111_1101;
				endcase
			end
			4'b1100 : begin
				DOT_C <= 4'b1101;	// 14
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_1011_1011;
					2'b01 : DOT_R <= 16'b1111_1011_1011_1011;
					2'b10 : DOT_R <= 16'b0000_0000_0000_1111;
				endcase
			end
			4'b1101 : begin
				DOT_C <= 4'b1110;	// 15
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_0111_1011;
					2'b01 : DOT_R <= 16'b1111_1111_1011_1111;
					2'b10 : DOT_R <= 16'b1111_1111_1111_1111;
				endcase
			end
			4'b1110 : begin
				DOT_C <= 4'b1111;	// 16
				case (sel)
					2'b00 : DOT_R <= 16'b1111_0111_0111_1111;
					2'b01 : DOT_R <= 16'b1111_1111_1111_1111;
					2'b10 : DOT_R <= 16'b1111_1111_1111_1111;
				endcase
			end
		endcase
	end
endmodule
*/