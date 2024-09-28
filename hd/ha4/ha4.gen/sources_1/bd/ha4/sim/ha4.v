//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Jul 10 18:18:59 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target ha4.bd
//Design      : ha4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ha4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ha4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ha4.hwdef" *) 
module ha4
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

  wire fa1_0_cout;
  wire fa1_0_sum;
  wire fa1_1_cout;
  wire fa1_1_sum;
  wire fa1_2_cout;
  wire fa1_2_sum;
  wire ha1_0_cout;
  wire ha1_0_sum;
  wire ia_0_1;
  wire ia_1_1;
  wire ia_2_1;
  wire ia_3_1;
  wire ib_0_1;
  wire ib_1_1;
  wire ib_2_1;
  wire ib_3_1;

  assign cout_0 = fa1_0_cout;
  assign ia_0_1 = ia_0;
  assign ia_1_1 = ia_1;
  assign ia_2_1 = ia_2;
  assign ia_3_1 = ia_3;
  assign ib_0_1 = ib_0;
  assign ib_1_1 = ib_1;
  assign ib_2_1 = ib_2;
  assign ib_3_1 = ib_3;
  assign sum_0 = fa1_0_sum;
  assign sum_1 = fa1_1_sum;
  assign sum_2 = fa1_2_sum;
  assign sum_3 = ha1_0_sum;
  ha4_fa1_0_0 fa1_0
       (.cin(fa1_1_cout),
        .cout(fa1_0_cout),
        .ia(ia_0_1),
        .ib(ib_0_1),
        .sum(fa1_0_sum));
  ha4_fa1_0_1 fa1_1
       (.cin(fa1_2_cout),
        .cout(fa1_1_cout),
        .ia(ia_1_1),
        .ib(ib_1_1),
        .sum(fa1_1_sum));
  ha4_fa1_0_2 fa1_2
       (.cin(ha1_0_cout),
        .cout(fa1_2_cout),
        .ia(ia_2_1),
        .ib(ib_2_1),
        .sum(fa1_2_sum));
  ha4_ha1_0_0 ha1_0
       (.cout(ha1_0_cout),
        .ia(ia_3_1),
        .ib(ib_3_1),
        .sum(ha1_0_sum));
endmodule
