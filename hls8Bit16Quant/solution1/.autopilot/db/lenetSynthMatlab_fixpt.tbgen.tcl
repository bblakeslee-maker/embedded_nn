set C_TypeInfoList {{ 
"lenetSynthMatlab_fixpt" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inputImg": [[], {"array": [ {"scalar": "unsigned char"}, [1024]]}] }, {"netScores": [[], {"array": [ {"scalar": "short"}, [10]]}] }],["0","1","2","3","4","5","6","7","8","9"],""],
 "0": [ "weightsFC3_g", [[], {"array": [ {"scalar": "short"}, [840]]}],""],
 "1": [ "weightsFC2_g", [[], {"array": [ {"scalar": "short"}, [10080]]}],""],
 "2": [ "weightsFC1_g", [[], {"array": [ {"scalar": "short"}, [48000]]}],""],
 "3": [ "weightsConv2_g", [[], {"array": [ {"scalar": "short"}, [2400]]}],""],
 "4": [ "weightsConv1_g", [[], {"array": [ {"scalar": "short"}, [150]]}],""],
 "5": [ "biasFC3_g", [[], {"array": [ {"scalar": "short"}, [10]]}],""],
 "6": [ "biasFC2_g", [[], {"array": [ {"scalar": "short"}, [84]]}],""],
 "7": [ "biasFC1_g", [[], {"array": [ {"scalar": "short"}, [120]]}],""],
 "8": [ "biasConv2_g", [[], {"array": [ {"scalar": "short"}, [16]]}],""],
 "9": [ "biasConv1_g", [[], {"array": [ {"scalar": "short"}, [6]]}],""]
}}
set moduleName lenetSynthMatlab_fixpt
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
set C_modelName {lenetSynthMatlab_fixpt}
set C_modelType { void 0 }
set C_modelArgList {
	{ inputImg int 8 unused {array 1024 { } 0 1 }  }
	{ netScores int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inputImg", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inputImg","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "netScores", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "netScores","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inputImg_address0 sc_out sc_lv 10 signal 0 } 
	{ inputImg_ce0 sc_out sc_logic 1 signal 0 } 
	{ inputImg_we0 sc_out sc_logic 1 signal 0 } 
	{ inputImg_d0 sc_out sc_lv 8 signal 0 } 
	{ inputImg_q0 sc_in sc_lv 8 signal 0 } 
	{ inputImg_address1 sc_out sc_lv 10 signal 0 } 
	{ inputImg_ce1 sc_out sc_logic 1 signal 0 } 
	{ inputImg_we1 sc_out sc_logic 1 signal 0 } 
	{ inputImg_d1 sc_out sc_lv 8 signal 0 } 
	{ inputImg_q1 sc_in sc_lv 8 signal 0 } 
	{ netScores_address0 sc_out sc_lv 4 signal 1 } 
	{ netScores_ce0 sc_out sc_logic 1 signal 1 } 
	{ netScores_we0 sc_out sc_logic 1 signal 1 } 
	{ netScores_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inputImg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inputImg", "role": "address0" }} , 
 	{ "name": "inputImg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImg", "role": "ce0" }} , 
 	{ "name": "inputImg_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImg", "role": "we0" }} , 
 	{ "name": "inputImg_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inputImg", "role": "d0" }} , 
 	{ "name": "inputImg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inputImg", "role": "q0" }} , 
 	{ "name": "inputImg_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "inputImg", "role": "address1" }} , 
 	{ "name": "inputImg_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImg", "role": "ce1" }} , 
 	{ "name": "inputImg_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImg", "role": "we1" }} , 
 	{ "name": "inputImg_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inputImg", "role": "d1" }} , 
 	{ "name": "inputImg_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inputImg", "role": "q1" }} , 
 	{ "name": "netScores_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "netScores", "role": "address0" }} , 
 	{ "name": "netScores_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "netScores", "role": "ce0" }} , 
 	{ "name": "netScores_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "netScores", "role": "we0" }} , 
 	{ "name": "netScores_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "netScores", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "20", "31", "33", "35", "37", "38"],
		"CDFG" : "lenetSynthMatlab_fixpt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2729254", "EstimateLatencyMax" : "6861094",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_c_sum_fu_618"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_f_sum_fu_624"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_g_sum_fu_630"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_d_sum_fu_636"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sum_fu_642"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_b_max_fu_648"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_d_max_fu_654"}],
		"Port" : [
			{"Name" : "inputImg", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "netScores", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1ActivationMap_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv10_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv11_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv12_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2ActivationMap_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv13_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv14_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv15_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv16_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_pool2ActivationMap_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv17_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv18_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_assign_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_c_sum_fu_618", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19"],
		"CDFG" : "c_sum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "781", "EstimateLatencyMax" : "2311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Y", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_c_sum_fu_618.lenetSynthMatlab_cud_U7", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_c_sum_fu_618.lenetSynthMatlab_dEe_U8", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_c_sum_fu_618.lenetSynthMatlab_dEe_U9", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_c_sum_fu_618.lenetSynthMatlab_eOg_U10", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_c_sum_fu_618.lenetSynthMatlab_eOg_U11", "Parent" : "14"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "f_sum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2161", "EstimateLatencyMax" : "6721",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Y", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_fYi_U22", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_g8j_U23", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_g8j_U24", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_hbi_U25", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_hbi_U26", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_ibs_U27", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_ibs_U28", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_ibs_U29", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_ibs_U30", "Parent" : "20"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_f_sum_fu_624.lenetSynthMatlab_ibs_U31", "Parent" : "20"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_g_sum_fu_630", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "g_sum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "881",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Y", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_g_sum_fu_630.lenetSynthMatlab_g8j_U38", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_d_sum_fu_636", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "d_sum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "91", "EstimateLatencyMax" : "283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Y", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_d_sum_fu_636.lenetSynthMatlab_dEe_U17", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sum_fu_642", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "sum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "76", "EstimateLatencyMax" : "236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Y", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sum_fu_642.lenetSynthMatlab_bkb_U1", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_b_max_fu_648", "Parent" : "0",
		"CDFG" : "b_max",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15737", "EstimateLatencyMax" : "15737",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b_y0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "maxval", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_d_max_fu_654", "Parent" : "0",
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
	lenetSynthMatlab_fixpt {
		inputImg {Type X LastRead -1 FirstWrite -1}
		netScores {Type O LastRead -1 FirstWrite 9}}
	c_sum {
		X {Type I LastRead 24 FirstWrite -1}
		Y {Type O LastRead -1 FirstWrite 21}}
	f_sum {
		X {Type I LastRead 26 FirstWrite -1}
		Y {Type O LastRead -1 FirstWrite 24}}
	g_sum {
		X {Type I LastRead 14 FirstWrite -1}
		Y {Type O LastRead -1 FirstWrite 3}}
	d_sum {
		X {Type I LastRead 12 FirstWrite -1}
		Y {Type O LastRead -1 FirstWrite 3}}
	sum {
		X {Type I LastRead 12 FirstWrite -1}
		Y {Type O LastRead -1 FirstWrite 3}}
	b_max {
		b_y0 {Type I LastRead 3 FirstWrite -1}
		maxval {Type O LastRead -1 FirstWrite 5}}
	d_max {
		b_y0 {Type I LastRead 3 FirstWrite -1}
		maxval {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2729254", "Max" : "6861094"}
	, {"Name" : "Interval", "Min" : "2729255", "Max" : "6861095"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inputImg { ap_memory {  { inputImg_address0 mem_address 1 10 }  { inputImg_ce0 mem_ce 1 1 }  { inputImg_we0 mem_we 1 1 }  { inputImg_d0 mem_din 1 8 }  { inputImg_q0 mem_dout 0 8 }  { inputImg_address1 mem_address 1 10 }  { inputImg_ce1 mem_ce 1 1 }  { inputImg_we1 mem_we 1 1 }  { inputImg_d1 mem_din 1 8 }  { inputImg_q1 mem_dout 0 8 } } }
	netScores { ap_memory {  { netScores_address0 mem_address 1 4 }  { netScores_ce0 mem_ce 1 1 }  { netScores_we0 mem_we 1 1 }  { netScores_d0 mem_din 1 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
