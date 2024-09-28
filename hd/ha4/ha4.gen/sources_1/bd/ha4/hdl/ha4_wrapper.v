//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Jul 10 18:18:59 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target ha4_wrapper.bd
//Design      : ha4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ha4_wrapper
   (cout_0,
    ia_0,
    ia_1,
    ia_2,
    ia_3,
    ib_0,
    ib_1,
    ib_2,
    ib_3,
    sum_0,
    sum_1,
    sum_2,
    sum_3);
  output cout_0;
  input ia_0;
  input ia_1;
  input ia_2;
  input ia_3;
  input ib_0;
  input ib_1;
  input ib_2;
  input ib_3;
  output sum_0;
  output sum_1;
  output sum_2;
  output sum_3;

  wire cout_0;
  wire ia_0;
  wire ia_1;
  wire ia_2;
  wire ia_3;
  wire ib_0;
  wire ib_1;
  wire ib_2;
  wire ib_3;
  wire sum_0;
  wire sum_1;
  wire sum_2;
  wire sum_3;

  ha4 ha4_i
       (.cout_0(cout_0),
        .ia_0(ia_0),
        .ia_1(ia_1),
        .ia_2(ia_2),
        .ia_3(ia_3),
        .ib_0(ib_0),
        .ib_1(ib_1),
        .ib_2(ib_2),
        .ib_3(ib_3),
        .sum_0(sum_0),
        .sum_1(sum_1),
        .sum_2(sum_2),
        .sum_3(sum_3));
endmodule
