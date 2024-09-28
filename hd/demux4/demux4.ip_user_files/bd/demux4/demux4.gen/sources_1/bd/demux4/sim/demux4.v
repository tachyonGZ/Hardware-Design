//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Jul 11 16:17:22 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target demux4.bd
//Design      : demux4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "demux4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=demux4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "demux4.hwdef" *) 
module demux4
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

  wire A_0_1;
  wire A_1_1;
  wire D_0_1;
  wire demux2_0_Y0;
  wire demux2_0_Y1;
  wire demux2_1_Y0;
  wire demux2_1_Y1;
  wire demux2_2_Y0;
  wire demux2_2_Y1;

  assign A_0_1 = A0;
  assign A_1_1 = A1;
  assign D_0_1 = D;
  assign Y0 = demux2_0_Y0;
  assign Y1 = demux2_0_Y1;
  assign Y2 = demux2_1_Y0;
  assign Y3 = demux2_1_Y1;
  demux4_demux2_0_0 demux2_0
       (.A(A_0_1),
        .D(demux2_2_Y0),
        .Y0(demux2_0_Y0),
        .Y1(demux2_0_Y1));
  demux4_demux2_0_1 demux2_1
       (.A(A_0_1),
        .D(demux2_2_Y1),
        .Y0(demux2_1_Y0),
        .Y1(demux2_1_Y1));
  demux4_demux2_0_2 demux2_2
       (.A(A_1_1),
        .D(D_0_1),
        .Y0(demux2_2_Y0),
        .Y1(demux2_2_Y1));
endmodule
