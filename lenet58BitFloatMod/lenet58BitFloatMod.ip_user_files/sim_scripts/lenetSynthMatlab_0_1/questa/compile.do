vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xbip_utils_v3_0_9
vlib questa_lib/msim/axi_utils_v2_0_5
vlib questa_lib/msim/xbip_pipe_v3_0_5
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_5
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_5
vlib questa_lib/msim/xbip_bram18k_v3_0_5
vlib questa_lib/msim/mult_gen_v12_0_14
vlib questa_lib/msim/floating_point_v7_1_6

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xbip_utils_v3_0_9 questa_lib/msim/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 questa_lib/msim/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 questa_lib/msim/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 questa_lib/msim/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 questa_lib/msim/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 questa_lib/msim/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 questa_lib/msim/mult_gen_v12_0_14
vmap floating_point_v7_1_6 questa_lib/msim/floating_point_v7_1_6

vlog -work xil_defaultlib -64 -sv \
"/home/tyrian/xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/tyrian/xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../ipstatic/xbip_utils_v3_0_9/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -64 -93 \
"../../../ipstatic/axi_utils_v2_0_5/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -64 -93 \
"../../../ipstatic/xbip_pipe_v3_0_5/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../ipstatic/xbip_dsp48_wrapper_v3_0_4/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -64 -93 \
"../../../ipstatic/xbip_dsp48_addsub_v3_0_5/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -64 -93 \
"../../../ipstatic/xbip_dsp48_multadd_v3_0_5/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -64 -93 \
"../../../ipstatic/xbip_bram18k_v3_0_5/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -64 -93 \
"../../../ipstatic/mult_gen_v12_0_14/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_6 -64 -93 \
"../../../ipstatic/floating_point_v7_1_6/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../ipstatic/hdl/vhdl/c_sum.vhd" \
"../../../ipstatic/hdl/vhdl/d_sum.vhd" \
"../../../ipstatic/hdl/vhdl/f_sum.vhd" \
"../../../ipstatic/hdl/vhdl/g_sum.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_Aem.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_bkb.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_CeG.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_cud.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_dEe.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_DeQ.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_Ee0.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_eOg.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_Ffa.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_fYi.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_g8j.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_hbi.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_ibs.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_jbC.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_kbM.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_lbW.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_mb6.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_ncg.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_ocq.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_pcA.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_qcK.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_rcU.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_sc4.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_tde.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_udo.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_vdy.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_wdI.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_yd2.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_zec.vhd" \
"../../../ipstatic/hdl/vhdl/sum.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab.vhd" \
"../../../ipstatic/hdl/ip/lenetSynthMatlab_ap_fmul_0_max_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/lenetSynthMatlab_ap_fcmp_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/lenetSynthMatlab_ap_uitofp_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/lenetSynthMatlab_ap_fadd_0_full_dsp_32.vhd" \
"../../../../lenet58BitFloatMod.srcs/sources_1/ip/lenetSynthMatlab_0_1/sim/lenetSynthMatlab_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

