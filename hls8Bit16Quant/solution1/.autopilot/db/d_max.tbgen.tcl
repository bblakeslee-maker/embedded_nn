set moduleName d_max
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {d_max}
set C_modelType { void 0 }
set C_modelArgList {
	{ b_y0 int 16 regular {array 1600 { 1 3 } 1 1 }  }
	{ maxval int 16 regular {array 1600 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_y0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "maxval", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b_y0_address0 sc_out sc_lv 11 signal 0 } 
	{ b_y0_ce0 sc_out sc_logic 1 signal 0 } 
	{ b_y0_q0 sc_in sc_lv 16 signal 0 } 
	{ maxval_address0 sc_out sc_lv 11 signal 1 } 
	{ maxval_ce0 sc_out sc_logic 1 signal 1 } 
	{ maxval_we0 sc_out sc_logic 1 signal 1 } 
	{ maxval_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b_y0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_y0", "role": "address0" }} , 
 	{ "name": "b_y0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_y0", "role": "ce0" }} , 
 	{ "name": "b_y0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_y0", "role": "q0" }} , 
 	{ "name": "maxval_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "maxval", "role": "address0" }} , 
 	{ "name": "maxval_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxval", "role": "ce0" }} , 
 	{ "name": "maxval_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxval", "role": "we0" }} , 
 	{ "name": "maxval_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "maxval", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "d_max",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5021", "EstimateLatencyMax" : "5021",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b_y0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "maxval", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	d_max {
		b_y0 {Type I LastRead 3 FirstWrite -1}
		maxval {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5021", "Max" : "5021"}
	, {"Name" : "Interval", "Min" : "5021", "Max" : "5021"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	b_y0 { ap_memory {  { b_y0_address0 mem_address 1 11 }  { b_y0_ce0 mem_ce 1 1 }  { b_y0_q0 mem_dout 0 16 } } }
	maxval { ap_memory {  { maxval_address0 mem_address 1 11 }  { maxval_ce0 mem_ce 1 1 }  { maxval_we0 mem_we 1 1 }  { maxval_d0 mem_din 1 16 } } }
}
