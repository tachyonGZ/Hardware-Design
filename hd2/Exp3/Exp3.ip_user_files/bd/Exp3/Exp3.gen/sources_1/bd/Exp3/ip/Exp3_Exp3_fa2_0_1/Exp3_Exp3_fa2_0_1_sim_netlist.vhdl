-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Aug 27 20:17:14 2024
-- Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Exp3_Exp3_fa2_0_1 -prefix
--               Exp3_Exp3_fa2_0_1_ Exp3_Exp3_fa2_0_0_sim_netlist.vhdl
-- Design      : Exp3_Exp3_fa2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Exp3_Exp3_fa2_0_1_Exp3_fa2 is
  port (
    s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cout : out STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cin : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end Exp3_Exp3_fa2_0_1_Exp3_fa2;

architecture STRUCTURE of Exp3_Exp3_fa2_0_1_Exp3_fa2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[1]_INST_0\ : label is "soft_lutpair0";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => b(0),
      I3 => a(0),
      I4 => cin,
      O => cout
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b(0),
      I1 => cin,
      I2 => a(0),
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => cin,
      I3 => b(1),
      I4 => a(1),
      O => s(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Exp3_Exp3_fa2_0_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cin : in STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Exp3_Exp3_fa2_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Exp3_Exp3_fa2_0_1 : entity is "Exp3_Exp3_fa2_0_0,Exp3_fa2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Exp3_Exp3_fa2_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Exp3_Exp3_fa2_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Exp3_Exp3_fa2_0_1 : entity is "Exp3_fa2,Vivado 2024.1";
end Exp3_Exp3_fa2_0_1;

architecture STRUCTURE of Exp3_Exp3_fa2_0_1 is
begin
inst: entity work.Exp3_Exp3_fa2_0_1_Exp3_fa2
     port map (
      a(1 downto 0) => a(1 downto 0),
      b(1 downto 0) => b(1 downto 0),
      cin => cin,
      cout => cout,
      s(1 downto 0) => s(1 downto 0)
    );
end STRUCTURE;
