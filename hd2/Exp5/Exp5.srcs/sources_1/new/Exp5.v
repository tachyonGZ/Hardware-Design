`timescale 1ns / 1ps

module Exp5(Clk, Reset, Addr_Out, Inst_out, Result_out, Qa_out, Qb_out, ALU_R_out, D_out, Wreg_out, Wr_out,
	Aluc_out, Shiftc_out, Wmem_out, Dout_out,
	R0, R1, R2, R3, R4, R5, R6, R7,
	EXTIMM_out
);
	input Clk;
	input Reset;
	output[31:0] Addr_Out;
	output[31:0] Inst_out;
	output[31:0] Result_out;
	output[31:0] Qa_out;
	output[31:0] Qb_out;
	output[31:0] ALU_R_out;
	output[31:0] D_out;
	output Wreg_out;
	output[2:0] Wr_out;
	output[2:0] Aluc_out;
	output[1:0] Shiftc_out;
	output Wmem_out;
	output[31:0] Dout_out;
	
	output[31:0] R0, R1, R2, R3, R4, R5, R6, R7;
	output[31:0] EXTIMM_out;
	
	wire[31:0] Result, Addr, instruction, pcadd4, D, Qa, Qb, EXTIMM, EXTIMML2, Y, Rtemp, R, Dout, Prsrc_2, Prsrc_3;
	wire[2:0] Wr;
	wire[2:0] Aluc;
	wire[1:0] Shiftc;
	wire[1:0] Pcsrc;
	wire Z, Regrt, Se, Wreg, Aluqb, Wmem, Reg2reg;
	wire Cout;
	
	assign Addr_Out = Addr;
	assign Inst_out = instruction;
	assign Result_out = Result;
	assign Qa_out = Qa;
	assign Qb_out = Qb;
	assign ALU_R_out = R;
	assign D_out = D;
	assign Wreg_out = Wreg;
	assign Wr_out = Wr;
	assign Aluc_out = Aluc;
	assign Shiftc_out = Shiftc;
	assign Wmem_out = Wmem;
	assign Dout_out = Dout;
	assign EXTIMM_out = EXTIMM;
	
	PC PC_inst0(Clk, Reset, Result, Addr);
	PCadd4 PCadd4_inst0(Addr, pcadd4);
	INSTMEM INSTMEM_inst0(Addr, instruction);
	
	CONUNIT CONUNIT_inst0(instruction[31:26], instruction[5:0], Z, Regrt, Se, Wreg, Aluqb, Aluc, Shiftc, Wmem, Pcsrc, Reg2reg);
	MUX2X5 MUX2X5_regrt(instruction[13:11], instruction[18:16], Regrt, Wr);
	EXT16T32 EXT16T32_inst0(instruction[15:0], Se, EXTIMM);
	SHIFTER_COMBINATION SHIFTER_COMBINATION_inst0(instruction[25:0], pcadd4, Prsrc_3);
	SHIFTER32_L2 SHIFTER32_L2_inst0(EXTIMM, EXTIMML2);
	
	REGFILE REGFILE_inst0(
		instruction[23:21], instruction[18:16], D, Wr, Wreg, Clk, Reset, Qa, Qb,
		R0, R1, R2, R3, R4, R5, R6, R7
	);
	
	MUX2X32 MUX2X32_aluqb(EXTIMM, Qb, Aluqb, Y);
	ALU ALU_inst0(Qa, Y, Aluc, Rtemp, Z);
	SHIFTER32 SHIFTER32_inst0(Rtemp, Shiftc, instruction[10:6], R);
	
	DATAMEM DATAMEM_inst0(R, Qb, Clk, Wmem, Dout);
	MUX2X32 MUX2X32_reg2reg(Dout, R, Reg2reg, D);
	
	CLA_32 CLA_32_inst0(pcadd4, EXTIMML2, 0, Prsrc_2, Cout);
	
	MUX4X32 MUX4X32_Pcsrc(pcadd4, 0, Prsrc_2, Prsrc_3, Pcsrc, Result);
endmodule

// 控制器
module CONUNIT(input[5:0] Op, input[5:0] Func, input Z, output Regrt, output Se, output Wreg, output Aluqb, output[2:0] Aluc, output[1:0] Shiftc, output Wmem, output[1:0] Pcsrc, output Reg2reg);
	wire R_type = ~Op[5] & ~Op[4] & ~Op[3] & ~Op[2] & ~Op[1] & ~Op[0];
	wire I_add = R_type & (Func == 6'b10_0000);
	wire I_sub = R_type & (Func == 6'b100010);
	wire I_and = R_type & (Func == 6'b100100);
	wire I_or = R_type & (Func == 6'b100101);
	wire I_xor = R_type & (Func == 6'b100110);
	wire I_nor = R_type & (Func == 6'b100111);
	wire I_sll = R_type & (Func == 6'b000000);
	wire I_srl = R_type & (Func == 6'b000010);
	wire I_sra = R_type & (Func == 6'b000011);
	
	wire I_addi = (Op == 6'b00_1000);
	wire I_addiu = (Op == 6'b00_1001);
	wire I_andi = (Op == 6'b00_1100);
	wire I_ori = (Op == 6'b00_1101);
	wire I_xori = (Op == 6'b00_1110);
	wire I_lw = (Op == 6'b10_0011);
	wire I_sw = (Op == 6'b10_1011);
	wire I_JE = (Op == 6'b00_0100);
	wire I_JNE = (Op == 6'b00_0101);
	wire I_J = (Op == 6'b00_0010);
	
	assign Regrt = I_addi | I_addiu | I_andi | I_ori | I_xori |I_lw | I_sw | I_JE | I_JNE | I_J;
	assign Se = I_addi | I_lw | I_sw | I_JE | I_JNE;
	assign Wreg = I_add | I_sub | I_and | I_or | I_xor | I_nor | I_sll | I_srl | I_sra | I_addi | I_addiu | I_andi | I_ori | I_xori | I_lw;
	assign Aluqb = I_add | I_sub | I_and | I_or | I_xor | I_nor | I_sll | I_srl | I_sra | I_JE | I_JNE | I_J;
	assign Aluc = {
		I_xor | I_nor | I_sll | I_srl | I_sra | I_xori,
		I_and | I_or | I_sll | I_srl | I_sra | I_andi | I_ori,
		I_sub | I_or | I_sll | I_srl | I_sra | I_ori | I_JE | I_JNE | I_nor
	};
	assign Shiftc = {
		I_srl | I_sra,
		I_sll | I_sra
	};
	assign Wmem = I_sw;
	assign Pcsrc = {(I_JE & Z) | (I_JNE & ~Z) | I_J, I_J};
	assign Reg2reg = I_add | I_sub | I_and | I_or | I_xor | I_nor | I_sll | I_srl | I_sra | I_addi | I_addiu | I_andi | I_ori | I_xori | I_sw | I_JE | I_JNE | I_J;
endmodule

module REGFILE(
	Ra, Rb, D, Wr, We, clk, Reset, Qa, Qb,
	R0, R1, R2, R3, R4, R5, R6, R7
);
	input wire[2:0] Ra, Rb, Wr;
	input wire We, clk, Reset;
	output[31:0] D, Qa, Qb;
	wire [7:0] mux;
	output wire [31:0] R0, R1, R2, R3, R4, R5, R6, R7;
	
	DEC3T8E DEC3T8E_inst0(Wr, We, mux);
	REG8X32 REG8X32_inst0(D, mux, clk, R0, R1, R2, R3, R4, R5, R6, R7);
	MUX8X32 MUX8X32_inst0(R0, R1, R2, R3, R4, R5, R6, R7, Ra, Qa);
	MUX8X32 MUX8X32_inst1(R0, R1, R2, R3, R4, R5, R6, R7, Rb, Qb);
endmodule

module REG8X32(D, mux, clk, R0, R1, R2, R3, R4, R5, R6, R7);
	input[31:0] D;
	input[7:0] mux;
	input clk;
	output reg[31:0] R0, R1, R2, R3, R4, R5, R6, R7;
	initial begin
		R0 <= 0;
		R1 <= 0;
		R2 <= 0;
		R3 <= 0;
		R4 <= 0;
		R5 <= 0;
		R6 <= 0;
		R7 <= 0;
	end
	
	always @(posedge clk) begin
		case (mux)
			8'b0000_0001 : R0 <= D;
			8'b0000_0010 : R1 <= D;
			8'b0000_0100 : R2 <= D;
			8'b0000_1000 : R3 <= D;
			8'b0001_0000 : R4 <= D;
			8'b0010_0000 : R5 <= D;
			8'b0100_0000 : R6 <= D;
			8'b1000_0000 : R7 <= D;
		endcase
	end
endmodule

module DEC3T8E(input[2:0] D, input en, output[7:0] Y);
	function [7:0] encoder;
		input[2:0] D;
		input en;
		if (~en)
			encoder = 8'b0000_0000;
		else begin
			case(D)
				3'b000 : encoder = 8'b00000001;
				3'b001 : encoder = 8'b00000010;
				3'b010 : encoder = 8'b00000100;
				3'b011 : encoder = 8'b00001000;
				3'b100 : encoder = 8'b00010000;
				3'b101 : encoder = 8'b00100000;
				3'b110 : encoder = 8'b01000000;
				3'b111 : encoder = 8'b10000000;
			endcase
		end
	endfunction
	assign Y = encoder(D, en);
endmodule

// 移位器
module SHIFTER32(input[31:0] D, input[1:0] Shiftc, input[4:0] shamt, output[31:0]Y);
	wire[31:0] d_ll, d_rl, d_ra;
	assign d_ll = D << shamt;	//逻辑左移
	assign d_rl = D >> shamt;	//逻辑右移
	assign d_ra = D >>> shamt;	//算术右移
	// 根据信号选择移位方法
	MUX4X32 MUX4X32_inst0(D, d_ll, d_rl, d_ra, Shiftc, Y);
endmodule

// 累加器
module ALU(input[31:0] X, input[31:0] Y, input[2:0] Aluc, output[31:0] R, output Z);
	wire[31:0] d_add, d_sub, d_and, d_or, d_xor, d_nor;
	
	assign d_add = X + Y;		// 加法
	assign d_sub = X - Y;		// 减法
	assign d_and = X & Y;		// 逻辑与
	assign d_or = X | Y;		// 逻辑或
	assign d_xor = X ^ Y;		// 逻辑异或
	assign d_nor = ~(X | Y);	// 逻辑非或
	
	// 根据信号选择运算方法
	MUX8X32 MUX8X32_inst0(d_add, d_sub, d_and, d_or, d_xor, d_nor, 0, Y, Aluc[2:0], R);
	
	// 结果是否为0
	assign Z = ~|R;
endmodule

module ADDSUB32(input[31:0] A, input [31:0] B, input sel, output[31:0] Y);
	wire[31:0] add, sub;
	assign add = A + B;
	assign sub = A - B;
	MUX2X32 MUX2X32_inst0(add, sub, sel, Y);
endmodule

module ANDOR32(input[31:0] A, input [31:0] B, input sel, output[31:0] Y);
	wire[31:0] add, sub;
	assign add = A & B;
	assign sub = A | B;
	MUX2X32 MUX2X32_inst0(add, sub, sel, Y);
endmodule

module MUX8X32(D0, D1, D2, D3, D4, D5, D6, D7, sel, Y);
	input[31:0] D0, D1, D2, D3, D4, D5, D6, D7;
	input[2:0] sel;
	output[31:0] Y;
	function [31:0] select;
		input[31:0] D0, D1, D2, D3, D4, D5, D6, D7;
		input[2:0] sel;
		case (sel)
			3'b000 : select = D0;
			3'b001 : select = D1;
			3'b010 : select = D2;
			3'b011 : select = D3;
			3'b100 : select = D4;
			3'b101 : select = D5;
			3'b110 : select = D6;
			3'b111 : select = D7;  
		endcase
	endfunction
	assign Y = select(D0, D1, D2, D3, D4, D5, D6, D7, sel);
endmodule

module MUX2X32(input[31:0] D0, input[31:0] D1, input sel, output [31:0] Y);
	function [31:0] select;
		input[31:0] D0, D1;
		input sel;
		case (sel)
			1'b0 : select = D0;
			1'b1 : select = D1;
		endcase
	endfunction
	assign Y = select(D0, D1, sel);
endmodule

// 16位立即数拓展为32位
module EXT16T32(input[15:0] A, input sel, output[31:0] S);
	wire[31:0] E0, E1;
	
	// 零扩展
	parameter z = 16'b0;
	assign E0 = {z, A};
	
	// 符号扩展
	wire[15:0] e = {16{A[15]}};
	assign E1 = {e, A};
	
	// 根据扩展信号选择
	MUX2X32 MUX2X32_inst0(E0, E1, sel, S);
endmodule

module MUX2X5(input[2:0] D0, input[2:0] D1, input sel, output[2:0] Y);
	function [2:0] select;
		input[2:0] D0, D1;
		input sel;
		case (sel)
			1'b0 : select = D0;
			1'b1 : select = D1;
		endcase
	endfunction
	assign Y = select(D0, D1, sel);
endmodule

module MUX4X32(input[31:0] D0, input[31:0] D1, input[31:0] D2, input[31:0] D3, input [1:0]sel, output [31:0]Y);
	function [31:0] select;
		input[31:0] D0, D1, D2, D3;
		input[1:0] sel;
		case (sel)
			2'b00 : select = D0;
			2'b01 : select = D1;
			2'b10 : select = D2;
			2'b11 : select = D3;
		endcase
	endfunction
	assign Y = select(D0, D1, D2, D3, sel);
endmodule

// jump inst
module SHIFTER_COMBINATION(input[25:0] A, input[31:0] pcadd4, output[31:0] S);
	parameter z = 2'b00;
	assign S = {pcadd4[31:28], A[25:0], z};
endmodule

module SHIFTER32_L2(input[31:0] A, output[31:0] S);
	parameter z = 2'b00;
	assign S = {A, z};
endmodule

// 数据存储器
module DATAMEM(input[31:0] addr, input[31:0] din, input clk, input we, output[31:0] dout);
	reg[31:0] ram[31:0];
	assign dout = ram[addr[6:2]];
	
	always @(posedge clk) begin
		if (we) ram[addr[6:2]] <= din;
	end
endmodule

// 指令寄存器
module INSTMEM(input[31:0] addr, output[31:0] inst);
	wire[31:0] Rom[64:0];
	assign Rom[5'h00]=32'h20010008; //addi $1,$0,8 $1=8
	assign Rom[5'h01]=32'h3402000C; //ori $2,$0,12 $2=12
	assign Rom[5'h02]=32'h00221820; //add $3,$1,$2 $3=20
	assign Rom[5'h03]=32'h00412022; //sub $4,$2,$1 $4=4
	assign Rom[5'h04]=32'h00222824; //and $5,$1,$2 $5=8(1000)			000000_00001_00010_00101_00000_100100
	assign Rom[5'h05]=32'h00223025; //or $6,$1,$2 $6=12(1100)
	assign Rom[5'h06]=32'h14220002; // bne $1,$2,2						000101_00001_00010_0000000000000010
	assign Rom[5'h07]=32'h00000000;
	assign Rom[5'h08]=32'h00000000;
	assign Rom[5'h09]=32'h10220002; // beq $1,$2,2						000100_00001_00010_0000000000000010
	assign Rom[5'h0A]=32'h08000010; // J 10
	assign Rom[5'h0B]=32'h00000000;
	assign Rom[5'h0c]=32'h00000000;
	assign Rom[5'h0d]=32'h00000000;
	assign Rom[5'h0E]=32'h00000000;
	assign Rom[5'h0F]=32'h00000000;
	assign Rom[5'h10]=32'hACE2000A; // sw $2 10($7) memory[$7+10]=12	101011_00111_00010_0000000000001010
	assign Rom[5'h11]=32'h8CE4000A; // lw $4 10($7) $4=12				100011_00111_00100_0000000000001010
	assign Rom[5'h12]=32'h2082FFFC; // addi $2,$4,-4 $2=8				001000_00100_00010_1111111111111100
	assign Rom[5'h13]=32'h00021880; // sll $3,$2,2 $3=32				000000_00000_00010_00011_00010_000000
	assign Rom[5'h14]=32'h00031142; // srl $2,$3,5 $2=1					000000_00000_00011_00010_00101_000010
	assign inst = Rom[addr[6:2]];
endmodule

// 指令寄存器
module PC(input clk, input reset, input[31:0] result, output reg[31:0] address);
	initial begin
		address <= 0;
	end
	// 更新内部寄存器的值
	always @(posedge clk) begin
		address = result;
	end
endmodule

module PCadd4(input[31:0] PC_in, output[31:0] PC_out);
	CLA_32 CLA_32_INST0(PC_in, 4, 0, PC_out, Cout);
endmodule

module CLA_32(input[31:0] A, input[31:0] B, input Cin, output[31:0] S, output Cout);
	assign {cout, S} = A + B + Cin;
endmodule