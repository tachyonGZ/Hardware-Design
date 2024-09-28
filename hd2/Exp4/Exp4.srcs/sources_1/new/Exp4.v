`timescale 1ns / 1ps

module Exp4(input[7:0] D, input key, output[7:0] Y, output[7:0] numa_g, output[2:0] _7SEL);
	Detect Detect_inst0(D, key, Y, numa_g, _7SEL);
endmodule

module Detect(input[7:0] D, input key, output reg[7:0] Y, output reg[7:0] numa_g, output[2:0] _7SEL);
	parameter S0 = 4'b0001, S1 = 4'b0010, S2 = 4'b0100;
	reg[3:0] state, next_state;
	reg x, z;
	integer i = 0;
	integer cnt = 0;
	
	assign _7SEL = 3'b000;
	always @(posedge key) begin
		i = 0;
		state = S0;
		cnt = 0;
		for (i = 0; i < 8; i = i + 1) begin
			x = D[i];
			z = 0;
			case(state)
				S0 : next_state = (x) ? S0 : S1;
				S1 : next_state = (x) ? S0 : S2;
				S2 : begin
					if (x) begin
						z = 1;
						cnt = cnt + 1;
						next_state = S0;
					end
					else
						next_state = S2;
				end
			endcase
			state = next_state;
			Y[i] = z;
		end
		
		case (cnt)
			0 : numa_g = 8'b0011_1111;
			1 : numa_g = 8'b0000_0110;
			2 : numa_g = 8'b0101_1011;
		endcase
	end
endmodule
/*
module Exp4(input[7:0] D, input clk, input clr, input en, output reg[7:0] Y);
	reg x;
	wire z;
	Detect detect_inst0(clk, clr, x, z);
	
	integer cnt = 0;
	
	always @(posedge clk) begin	
		x <= D[cnt];
		Y[cnt] <= z;
		
		if (cnt == 7)
			cnt <= 0;
		else
			cnt <= cnt + 1;
	end
endmodule

module Detect(input clk, input clr, input x, output reg z);
	parameter S0 = 4'b0001, S1 = 4'b0010, S2 = 4'b0100, S3 = 4'b1000;
	reg[3:0] state, next_state;
	
	initial begin
		next_state <= S0;
	end
	
	always @(posedge clk or posedge clr)
		if (clr) state <= S0;
		else state <= next_state;
	
	always @(state or x)
		case (state)
			S0 : next_state <= (x) ? S1 : S0;
			S1 : next_state <= (~x) ? S2 : S1;
			S2 : next_state <= (x) ? S3 : S0;
			S3 : next_state <= (x) ? S1 : S0;
			default : next_state <= S0;
		endcase
		
	always @(state)
		case (state)
			S3 : z = 1'b1;
			default : z = 1'b0;
		endcase
endmodule

module DetectOverlap(input clk, input clr, input x, output reg z);
	parameter S0 = 4'b0001, S1 = 4'b0010, S2 = 4'b0100, S3 = 4'b1000;
	reg[3:0] state, next_state;
	
	always @(posedge clk or posedge clr)
		if (clr) state <= S0;
		else state <= next_state;
	
	always @(state or x)
		case (state)
			S0 : next_state <= (x) ? S1 : S0;
			S1 : next_state <= (x) ? S2 : S1;
			S2 : next_state <= (x) ? S3 : S0;
			S3 : next_state <= (x) ? S1 : S2;
			default : next_state <= S0;
		endcase
		
	always @(state)
		case (state)
			S3 : z = 1'b1;
			default : z = 1'b0;
		endcase
endmodule
*/