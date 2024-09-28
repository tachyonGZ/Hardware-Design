`timescale 1 ps / 1 ps

module Exp3_wrapper
   (a_0,
    a_1,
    b_0,
    b_1,
    cin_0,
    s_0,
    s_1,
    cout_0);
  input [1:0]a_0;
  input [1:0]a_1;
  input [1:0]b_0;
  input [1:0]b_1;
  input cin_0;
  output cout_0;
  output [1:0]s_0;
  output [1:0]s_1;

  wire [1:0]a_0;
  wire [1:0]a_1;
  wire [1:0]b_0;
  wire [1:0]b_1;
  wire cin_0;
  wire cout_0;
  wire [1:0]s_0;
  wire [1:0]s_1;

  Exp3 Exp3_i
       (.a_0(a_0),
        .a_1(a_1),
        .b_0(b_0),
        .b_1(b_1),
        .cin_0(cin_0),
        .cout_0(cout_0),
        .s_0(s_0),
        .s_1(s_1));
endmodule
