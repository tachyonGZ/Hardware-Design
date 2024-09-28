//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Tue Aug 27 20:16:44 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target Exp3.bd
//Design      : Exp3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Exp3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Exp3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Exp3.hwdef" *) 
module Exp3
   (a_0,
    a_1,
    b_0,
    b_1,
    cin_0,
    cout_0,
    s_0,
    s_1);
  input [1:0]a_0;
  input [1:0]a_1;
  input [1:0]b_0;
  input [1:0]b_1;
  input cin_0;
  output cout_0;
  output [1:0]s_0;
  output [1:0]s_1;

  wire Exp3_fa2_0_cout;
  wire [1:0]Exp3_fa2_0_s;
  wire Exp3_fa2_1_cout;
  wire [1:0]Exp3_fa2_1_s;
  wire [1:0]a_0_1;
  wire [1:0]a_1_1;
  wire [1:0]b_0_1;
  wire [1:0]b_1_1;
  wire cin_0_1;

  assign a_0_1 = a_0[1:0];
  assign a_1_1 = a_1[1:0];
  assign b_0_1 = b_0[1:0];
  assign b_1_1 = b_1[1:0];
  assign cin_0_1 = cin_0;
  assign cout_0 = Exp3_fa2_0_cout;
  assign s_0[1:0] = Exp3_fa2_1_s;
  assign s_1[1:0] = Exp3_fa2_0_s;
  Exp3_Exp3_fa2_0_0 Exp3_fa2_0
       (.a(a_1_1),
        .b(b_1_1),
        .cin(Exp3_fa2_1_cout),
        .cout(Exp3_fa2_0_cout),
        .s(Exp3_fa2_0_s));
  Exp3_Exp3_fa2_0_1 Exp3_fa2_1
       (.a(a_0_1),
        .b(b_0_1),
        .cin(cin_0_1),
        .cout(Exp3_fa2_1_cout),
        .s(Exp3_fa2_1_s));
endmodule
