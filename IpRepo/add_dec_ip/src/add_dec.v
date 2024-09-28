`timescale 1ns / 1ps
module add_dec(input[3:0] A, input[3:0] B, input cin, output[3:0] Y, output cout);
	
	wire[4:0] temp;
	assign temp = A + B + cin;
	
	reg[4:0] out;
	
	assign Y = out[3:0]; 
	assign cout = out[4];
	always@(temp)
	if(temp > 5'b01001)
	begin
		out[3:0] = temp - 5'b01010;
		out[4] = 1;
	end
	else
	begin
		out[3:0] = temp;
		out[4] = 0;
	end
endmodule
