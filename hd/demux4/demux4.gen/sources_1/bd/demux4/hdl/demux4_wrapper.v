//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Jul 11 16:17:22 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target demux4_wrapper.bd
//Design      : demux4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module demux4_wrapper
   (A0,
    A1,
    D,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input D;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire D;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  demux4 demux4_i
       (.A0(A0),
        .A1(A1),
        .D(D),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule
