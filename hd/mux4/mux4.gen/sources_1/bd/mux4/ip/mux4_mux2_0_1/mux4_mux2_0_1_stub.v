// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Jul 11 13:46:18 2024
// Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mux4_mux2_0_1 -prefix
//               mux4_mux2_0_1_ mux4_mux2_0_0_stub.v
// Design      : mux4_mux2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux2,Vivado 2024.1" *)
module mux4_mux2_0_1(A, B, S, Y)
/* synthesis syn_black_box black_box_pad_pin="A,B,S,Y" */;
  input A;
  input B;
  input S;
  output Y;
endmodule
