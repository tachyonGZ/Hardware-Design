`timescale 1ns / 1ps

module fa1_tb();
	reg ia, ib, cin;
	wire sum, cout;
	
	fa1 fa1_inst0(
		.ia(ia),
		.ib(ib),
		.cin(cin),
		.sum(sum),
		.cout(cout)
	);
	
	initial begin
		ia = 0;
		repeat(10)
			#10 ia = $random;
		end
	
	initial begin
		ib = 0;
		repeat(10)
			#10 ib = $random;
		end
		
	initial begin
		cin = 0;
		repeat(10)
			#10 cin = $random;
		end
endmodule