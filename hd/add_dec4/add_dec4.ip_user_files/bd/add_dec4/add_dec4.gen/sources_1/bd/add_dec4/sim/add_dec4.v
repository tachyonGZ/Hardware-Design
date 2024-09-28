//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sat Jul 13 20:37:21 2024
//Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
//Command     : generate_target add_dec4.bd
//Design      : add_dec4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "add_dec4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=add_dec4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "add_dec4.hwdef" *) 
module add_dec4
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

  wire [3:0]A_0_1;
  wire [3:0]A_1_1;
  wire [3:0]A_2_1;
  wire [3:0]A_3_1;
  wire [3:0]B_0_1;
  wire [3:0]B_1_1;
  wire [3:0]B_2_1;
  wire [3:0]B_3_1;
  wire [3:0]add_dec_0_Y;
  wire add_dec_0_cout;
  wire [3:0]add_dec_1_Y;
  wire add_dec_1_cout;
  wire [3:0]add_dec_2_Y;
  wire add_dec_2_cout;
  wire [3:0]add_dec_3_Y;
  wire add_dec_3_cout;
  wire cin_0_1;

  assign A_0_1 = A3[3:0];
  assign A_1_1 = A2[3:0];
  assign A_2_1 = A1[3:0];
  assign A_3_1 = A0[3:0];
  assign B_0_1 = B3[3:0];
  assign B_1_1 = B2[3:0];
  assign B_2_1 = B1[3:0];
  assign B_3_1 = B0[3:0];
  assign Y0[3:0] = add_dec_3_Y;
  assign Y1[3:0] = add_dec_2_Y;
  assign Y2[3:0] = add_dec_1_Y;
  assign Y3[3:0] = add_dec_0_Y;
  assign cin_0_1 = cin;
  assign cout = add_dec_0_cout;
  add_dec4_add_dec_0_0 add_dec_0
       (.A(A_0_1),
        .B(B_0_1),
        .Y(add_dec_0_Y),
        .cin(add_dec_1_cout),
        .cout(add_dec_0_cout));
  add_dec4_add_dec_0_1 add_dec_1
       (.A(A_1_1),
        .B(B_1_1),
        .Y(add_dec_1_Y),
        .cin(add_dec_2_cout),
        .cout(add_dec_1_cout));
  add_dec4_add_dec_0_2 add_dec_2
       (.A(A_2_1),
        .B(B_2_1),
        .Y(add_dec_2_Y),
        .cin(add_dec_3_cout),
        .cout(add_dec_2_cout));
  add_dec4_add_dec_0_3 add_dec_3
       (.A(A_3_1),
        .B(B_3_1),
        .Y(add_dec_3_Y),
        .cin(cin_0_1),
        .cout(add_dec_3_cout));
endmodule
