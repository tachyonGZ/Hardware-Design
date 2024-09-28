//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Jul 11 13:58:49 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target mux4.bd
//Design      : mux4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mux4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mux4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "mux4.hwdef" *) 
module mux4
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

  wire a_0_1;
  wire a_1_1;
  wire b_0_1;
  wire b_1_1;
  wire mux2_0_out;
  wire mux2_1_out;
  wire mux2_2_out;
  wire sl_0_1;
  wire sl_1_1;

  assign Y = mux2_2_out;
  assign a_0_1 = D0;
  assign a_1_1 = D2;
  assign b_0_1 = D1;
  assign b_1_1 = D3;
  assign sl_0_1 = S0;
  assign sl_1_1 = S1;
  mux4_mux2_0_0 mux2_0
       (.A(a_0_1),
        .B(b_0_1),
        .S(sl_0_1),
        .Y(mux2_0_out));
  mux4_mux2_0_1 mux2_1
       (.A(a_1_1),
        .B(b_1_1),
        .S(sl_0_1),
        .Y(mux2_1_out));
  mux4_mux2_0_2 mux2_2
       (.A(mux2_0_out),
        .B(mux2_1_out),
        .S(sl_1_1),
        .Y(mux2_2_out));
endmodule
