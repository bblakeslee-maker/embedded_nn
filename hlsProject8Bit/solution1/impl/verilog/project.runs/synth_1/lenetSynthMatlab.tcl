# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/c_sum.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/d_sum.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/f_sum.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/g_sum.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_bkb.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_cud.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_dEe.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_eOg.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_fYi.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_g8j.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_hbi.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_ibs.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_jbC.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_kbM.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_lbW.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_mb6.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_ncg.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_ocq.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_pcA.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_qcK.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_sc4.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_tde.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_udo.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_vdy.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_wdI.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_xdS.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab_yd2.v
  /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/sum.v
}
read_ip -quiet /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.srcs/sources_1/ip/lenetSynthMatlab_ap_dcmp_0_no_dsp_64/lenetSynthMatlab_ap_dcmp_0_no_dsp_64.xci

read_ip -quiet /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.srcs/sources_1/ip/lenetSynthMatlab_ap_dadd_4_full_dsp_64/lenetSynthMatlab_ap_dadd_4_full_dsp_64.xci

read_ip -quiet /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.srcs/sources_1/ip/lenetSynthMatlab_ap_fpext_0_no_dsp_32/lenetSynthMatlab_ap_fpext_0_no_dsp_32.xci

read_ip -quiet /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.srcs/sources_1/ip/lenetSynthMatlab_ap_fptrunc_0_no_dsp_64/lenetSynthMatlab_ap_fptrunc_0_no_dsp_64.xci

read_ip -quiet /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.srcs/sources_1/ip/lenetSynthMatlab_ap_uitofp_4_no_dsp_32/lenetSynthMatlab_ap_uitofp_4_no_dsp_32.xci

read_ip -quiet /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.srcs/sources_1/ip/lenetSynthMatlab_ap_fmul_2_max_dsp_32/lenetSynthMatlab_ap_fmul_2_max_dsp_32.xci

read_ip -quiet /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.srcs/sources_1/ip/lenetSynthMatlab_ap_fadd_3_full_dsp_32/lenetSynthMatlab_ap_fadd_3_full_dsp_32.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab.xdc
set_property used_in_implementation false [get_files /home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/lenetSynthMatlab.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top lenetSynthMatlab -part xc7a100tcsg324-1 -directive sdx_optimization_effort_high -no_iobuf -mode out_of_context


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef lenetSynthMatlab.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file lenetSynthMatlab_utilization_synth.rpt -pb lenetSynthMatlab_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]