############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls8Bit16Quant
set_top lenetSynthMatlab_fixpt
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt.c
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt.h
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt_data.c
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt_data.h
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt_initialize.c
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt_initialize.h
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt_terminate.c
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt_terminate.h
add_files ../Desktop/quantTest/lenetSynthMatlab_fixpt_types.h
add_files ../Desktop/quantTest/max.c
add_files ../Desktop/quantTest/max.h
add_files ../Desktop/quantTest/mtimes.c
add_files ../Desktop/quantTest/mtimes.h
add_files ../Desktop/quantTest/rtwtypes.h
add_files ../Desktop/quantTest/sum.c
add_files ../Desktop/quantTest/sum.h
add_files ../Desktop/quantTest/tmwtypes.h
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./hls8Bit16Quant/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design -rtl vhdl
export_design -flow impl -rtl vhdl -format ip_catalog -description "LeNet5 with 8 bit interface and full 16 bit quantization." -vendor "BryanBlakeslee" -library "LeNet5"
