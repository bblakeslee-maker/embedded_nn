############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hlsProject8Bit
set_top lenetSynthMatlab
add_files codegen/lib/lenetSynthMatlab/tmwtypes.h
add_files codegen/lib/lenetSynthMatlab/sum.h
add_files codegen/lib/lenetSynthMatlab/sum.c
add_files codegen/lib/lenetSynthMatlab/rtwtypes.h
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab_types.h
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab_terminate.h
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab_terminate.c
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab_initialize.h
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab_initialize.c
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab_data.h
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab_data.c
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab.h
add_files codegen/lib/lenetSynthMatlab/lenetSynthMatlab.c
add_files -tb codegen/lib/lenetSynthMatlab/examples/main.h -cflags "-Wno-unknown-pragmas"
add_files -tb codegen/lib/lenetSynthMatlab/examples/main.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./hlsProject8Bit/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog -description "LeNet5 8 bit VHDL model." -vendor "BryanBlakeslee" -library "lenet5VHDL8Bit"
