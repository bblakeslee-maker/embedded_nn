vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../ipstatic/hdl/vhdl/b_max.vhd" \
"../../../ipstatic/hdl/vhdl/c_sum.vhd" \
"../../../ipstatic/hdl/vhdl/d_max.vhd" \
"../../../ipstatic/hdl/vhdl/d_sum.vhd" \
"../../../ipstatic/hdl/vhdl/f_sum.vhd" \
"../../../ipstatic/hdl/vhdl/g_sum.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_bkb.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_cud.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_dEe.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_eOg.vhd" \
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
"../../../ipstatic/hdl/vhdl/sum.vhd" \
"../../../ipstatic/hdl/vhdl/lenetSynthMatlab_fixpt.vhd" \
"../../../../lenet5VHDL8Bit16Quant.srcs/sources_1/ip/lenetSynthMatlab_fixpt_0/sim/lenetSynthMatlab_fixpt_0.vhd" \


