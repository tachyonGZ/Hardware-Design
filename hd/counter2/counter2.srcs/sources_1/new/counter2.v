`timescale 1ns / 1ps
module counter2(clk, r, s, en, d, q);

	input clk, r, s, en;
	input[1:0] d;
	//output co;
	output[1:0] q;
	
	reg[1:0] q;
	reg co;
	always@ (posedge clk) begin
		if (r)
			q = 0;
		else
			if (s)
				q = d;
			else if(en)
			begin
				if (q == 2'b11)
					q = 2'b00;
				q = q + 2'b1;
			end
			else
				q = q;
	end
endmodule
