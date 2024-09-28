`timescale 1ns / 1ps
module Exp5_tb();
	
	reg Clk, Reset;
	wire[31:0] Addr, Inst, NextAddr, Qa, Qb, R, D, Dout;
	wire wreg;
	wire[2:0] wr;
	wire[2:0] Aluc;
	wire[1:0] Shiftc;
	wire Wmem;
	
	wire[31:0] R0, R1, R2, R3, R4, R5, R6, R7;
	
	wire[31:0] EXTIMM;
	Exp5 Exp5_inst0(Clk, Reset, Addr, Inst, NextAddr, Qa, Qb, R, D, wreg, wr,
		Aluc, Shiftc, Wmem, Dout,
		R0, R1, R2, R3, R4, R5, R6, R7,
		EXTIMM
	);
	
	initial begin
		Clk = 0;
		Reset = 0;
	end
	
	always begin
		#5;
		Clk = ~Clk;
	end
	/*
	wire[31:0] a, b, R;
	wire[1:0] aluc;
	wire z;
	assign a = 32'h8;
	assign b = 32'hC;
	assign aluc = 2'b10;
	ALU i0(a, b, aluc, R, z);
	*/
endmodule
