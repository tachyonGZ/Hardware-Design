-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Aug 27 20:17:14 2024
-- Host        : DESKTOP-0M9PCUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Exp3_Exp3_fa2_0_0_stub.vhdl
-- Design      : Exp3_Exp3_fa2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cin : in STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cout : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[1:0],b[1:0],cin,s[1:0],cout";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Exp3_fa2,Vivado 2024.1";
begin
end;
