-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Jul 11 13:46:18 2024
-- Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/MyCode/hd/mux4/mux4.gen/sources_1/bd/mux4/ip/mux4_mux2_0_0/mux4_mux2_0_0_sim_netlist.vhdl
-- Design      : mux4_mux2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4_mux2_0_0_mux2 is
  port (
    Y : out STD_LOGIC;
    A : in STD_LOGIC;
    S : in STD_LOGIC;
    B : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mux4_mux2_0_0_mux2 : entity is "mux2";
end mux4_mux2_0_0_mux2;

architecture STRUCTURE of mux4_mux2_0_0_mux2 is
begin
\Y__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => A,
      I1 => S,
      I2 => B,
      O => Y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4_mux2_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    S : in STD_LOGIC;
    Y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mux4_mux2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mux4_mux2_0_0 : entity is "mux4_mux2_0_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mux4_mux2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mux4_mux2_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mux4_mux2_0_0 : entity is "mux2,Vivado 2024.1";
end mux4_mux2_0_0;

architecture STRUCTURE of mux4_mux2_0_0 is
begin
inst: entity work.mux4_mux2_0_0_mux2
     port map (
      A => A,
      B => B,
      S => S,
      Y => Y
    );
end STRUCTURE;
