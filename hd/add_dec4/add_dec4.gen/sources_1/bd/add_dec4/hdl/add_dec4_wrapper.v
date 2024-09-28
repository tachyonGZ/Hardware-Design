//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sat Jul 13 20:37:21 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target add_dec4_wrapper.bd
//Design      : add_dec4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module add_dec4_wrapper
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    Y0,
    Y1,
    Y2,
    Y3,
    cin,
    cout);
  input [3:0]A0;
  input [3:0]A1;
  input [3:0]A2;
  input [3:0]A3;
  input [3:0]B0;
  input [3:0]B1;
  input [3:0]B2;
  input [3:0]B3;
  output [3:0]Y0;
  output [3:0]Y1;
  output [3:0]Y2;
  output [3:0]Y3;
  input cin;
  output cout;

  wire [3:0]A0;
  wire [3:0]A1;
  wire [3:0]A2;
  wire [3:0]A3;
  wire [3:0]B0;
  wire [3:0]B1;
  wire [3:0]B2;
  wire [3:0]B3;
  wire [3:0]Y0;
  wire [3:0]Y1;
  wire [3:0]Y2;
  wire [3:0]Y3;
  wire cin;
  wire cout;

  add_dec4 add_dec4_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .cin(cin),
        .cout(cout));
endmodule
