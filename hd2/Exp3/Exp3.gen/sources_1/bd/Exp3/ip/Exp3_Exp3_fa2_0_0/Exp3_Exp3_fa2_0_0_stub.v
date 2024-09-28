// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug 27 20:17:14 2024
// Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/MyCode/hd2/Exp3/Exp3.gen/sources_1/bd/Exp3/ip/Exp3_Exp3_fa2_0_0/Exp3_Exp3_fa2_0_0_stub.v
// Design      : Exp3_Exp3_fa2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Exp3_fa2,Vivado 2024.1" *)
module Exp3_Exp3_fa2_0_0(a, b, cin, s, cout)
/* synthesis syn_black_box black_box_pad_pin="a[1:0],b[1:0],cin,s[1:0],cout" */;
  input [1:0]a;
  input [1:0]b;
  input cin;
  output [1:0]s;
  output cout;
endmodule
