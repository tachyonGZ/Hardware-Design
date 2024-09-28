//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Jul 11 13:58:49 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target mux4_wrapper.bd
//Design      : mux4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux4_wrapper
   (D0,
    D1,
    D2,
    D3,
    S0,
    S1,
    Y);
  input D0;
  input D1;
  input D2;
  input D3;
  input S0;
  input S1;
  output Y;

  wire D0;
  wire D1;
  wire D2;
  wire D3;
  wire S0;
  wire S1;
  wire Y;

  mux4 mux4_i
       (.D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .S0(S0),
        .S1(S1),
        .Y(Y));
endmodule
