############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls8BitFloatMod
set_top lenetSynthMatlab
add_files ../Desktop/buildTest/tmwtypes.h
add_files ../Desktop/buildTest/sum.h
add_files ../Desktop/buildTest/sum.c
add_files ../Desktop/buildTest/rtwtypes.h
add_files ../Desktop/buildTest/lenetSynthMatlab_types.h
add_files ../Desktop/buildTest/lenetSynthMatlab.h
add_files ../Desktop/buildTest/lenetSynthMatlab.c
add_files -tb ../Desktop/buildTest/main.h -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb ../Desktop/buildTest/main.c -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "Lenet_100MHz"
set_part {xc7a100tcsg324-1}
create_clock -period 10 -name default
#source "./hls8BitFloatMod/Lenet_100MHz/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl vhdl -format ip_catalog -description "LeNet5 running at 100MHz." -vendor "BryanBlakeslee" -library "LeNet5"
