############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hlsProject
set_top lenetSynthMatlab
add_files ../generatedCCode/tmwtypes.h
add_files ../generatedCCode/sum.h
add_files ../generatedCCode/sum.c
add_files ../generatedCCode/rtwtypes.h
add_files ../generatedCCode/lenetSynthMatlab_types.h
add_files ../generatedCCode/lenetSynthMatlab_terminate.h
add_files ../generatedCCode/lenetSynthMatlab_terminate.c
add_files ../generatedCCode/lenetSynthMatlab_initialize.h
add_files ../generatedCCode/lenetSynthMatlab_initialize.c
add_files ../generatedCCode/lenetSynthMatlab_data.h
add_files ../generatedCCode/lenetSynthMatlab_data.c
add_files ../generatedCCode/lenetSynthMatlab.h
add_files ../generatedCCode/lenetSynthMatlab.c
add_files -tb ../codegen/lib/lenetSynthMatlab/examples/main.h -cflags "-Wno-unknown-pragmas"
add_files -tb ../codegen/lib/lenetSynthMatlab/examples/main.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./hlsProject/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl vhdl -format ip_catalog -description "LeNet5 VHDL model." -vendor "BryanBlakeslee" -library "lenet5" -display_name "LeNet5"
