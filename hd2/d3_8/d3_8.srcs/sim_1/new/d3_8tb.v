`timescale 1ns / 1ps
module d3_8tb();
	reg[2:0] A;
	wire[7:0] Y;
	
	d3_8 d3_8_inst0(A, Y);
	
	always
		begin
			A = 3'b000; #20;
			A = 3'b001; #20;
			A = 3'b010; #20;
			A = 3'b011; #20;
			A = 3'b100; #20;
			A = 3'b101; #20;
			A = 3'b110; #20;
			A = 3'b111; #20;
		end
endmodule
