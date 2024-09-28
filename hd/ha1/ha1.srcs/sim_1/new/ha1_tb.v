`timescale 1ns / 1ps

module ha1_tb();
	reg ia, ib;
	wire sum, cout;
	
	ha1 ha1_inst0(
		.ia(ia),
		.ib(ib),
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
endmodule