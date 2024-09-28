`timescale 1ns / 1ps

module mux2_tb();
	wire a, b, s;
	wire y;
	
	mux2 mux2_inst0(
		.A(a),
		.B(b),
		.S(s),
		.Y(y)
	);

	reg [2:0] counter;
	
	assign a = counter[2];
	assign b = counter[1];
	assign s = counter[0];
	initial begin
		counter = 'b0;
		repeat(7) begin
			#10;
			counter = counter + 1'b1;
		end
	end
endmodule
