-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Jul 11 13:46:18 2024
-- Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mux4_mux2_0_2 -prefix
--               mux4_mux2_0_2_ mux4_mux2_0_0_stub.vhdl
-- Design      : mux4_mux2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_mux2_0_2 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    S : in STD_LOGIC;
    Y : out STD_LOGIC
  );

end mux4_mux2_0_2;

architecture stub of mux4_mux2_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,S,Y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux2,Vivado 2024.1";
begin
end;
