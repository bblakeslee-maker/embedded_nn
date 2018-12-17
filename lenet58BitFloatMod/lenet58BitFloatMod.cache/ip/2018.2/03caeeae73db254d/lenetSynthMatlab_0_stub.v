// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Dec 10 18:05:12 2018
// Host        : Neuromancer running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lenetSynthMatlab_0_stub.v
// Design      : lenetSynthMatlab_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lenetSynthMatlab,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(inputImg_ce0, netScores_ce0, netScores_we0, 
  ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, inputImg_address0, inputImg_q0, 
  netScores_address0, netScores_d0)
/* synthesis syn_black_box black_box_pad_pin="inputImg_ce0,netScores_ce0,netScores_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,inputImg_address0[9:0],inputImg_q0[7:0],netScores_address0[3:0],netScores_d0[31:0]" */;
  output inputImg_ce0;
  output netScores_ce0;
  output netScores_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [9:0]inputImg_address0;
  input [7:0]inputImg_q0;
  output [3:0]netScores_address0;
  output [31:0]netScores_d0;
endmodule
