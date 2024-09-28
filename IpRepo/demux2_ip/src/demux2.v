`timescale 1ns / 1ps
module demux2(
		D, A,
		Y0, Y1
    );
    
    input D, A;
    output Y0, Y1;
    
    assign Y0 = ~A & D;
    assign Y1 = A & D;
endmodule
