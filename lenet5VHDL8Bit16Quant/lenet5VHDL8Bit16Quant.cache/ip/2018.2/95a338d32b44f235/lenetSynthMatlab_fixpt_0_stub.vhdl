-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Mon Dec 10 15:33:11 2018
-- Host        : Neuromancer running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lenetSynthMatlab_fixpt_0_stub.vhdl
-- Design      : lenetSynthMatlab_fixpt_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    inputImg_ce0 : out STD_LOGIC;
    inputImg_we0 : out STD_LOGIC;
    inputImg_ce1 : out STD_LOGIC;
    inputImg_we1 : out STD_LOGIC;
    netScores_ce0 : out STD_LOGIC;
    netScores_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    inputImg_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    inputImg_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inputImg_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inputImg_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    inputImg_d1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inputImg_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    netScores_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    netScores_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "inputImg_ce0,inputImg_we0,inputImg_ce1,inputImg_we1,netScores_ce0,netScores_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,inputImg_address0[9:0],inputImg_d0[7:0],inputImg_q0[7:0],inputImg_address1[9:0],inputImg_d1[7:0],inputImg_q1[7:0],netScores_address0[3:0],netScores_d0[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "lenetSynthMatlab_fixpt,Vivado 2018.2";
begin
end;
