set moduleName fir_Pipeline_MAC_Loop_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {fir_Pipeline_MAC_Loop_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_ln53 int 7 regular  }
	{ acc_q1_out int 16 regular {pointer 1}  }
	{ acc_i1_out int 16 regular {pointer 1}  }
	{ shift_i int 16 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ c int 5 regular {array 128 { 1 } 1 1 } {global 0}  }
	{ shift_q int 16 regular {array 128 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "add_ln53", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "acc_q1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_i1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shift_i", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "shift_q", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln53 sc_in sc_lv 7 signal 0 } 
	{ acc_q1_out sc_out sc_lv 16 signal 1 } 
	{ acc_q1_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ acc_i1_out sc_out sc_lv 16 signal 2 } 
	{ acc_i1_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ shift_i_address0 sc_out sc_lv 7 signal 3 } 
	{ shift_i_ce0 sc_out sc_logic 1 signal 3 } 
	{ shift_i_q0 sc_in sc_lv 16 signal 3 } 
	{ c_address0 sc_out sc_lv 7 signal 4 } 
	{ c_ce0 sc_out sc_logic 1 signal 4 } 
	{ c_q0 sc_in sc_lv 5 signal 4 } 
	{ shift_q_address0 sc_out sc_lv 7 signal 5 } 
	{ shift_q_ce0 sc_out sc_logic 1 signal 5 } 
	{ shift_q_q0 sc_in sc_lv 16 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln53", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "add_ln53", "role": "default" }} , 
 	{ "name": "acc_q1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "acc_q1_out", "role": "default" }} , 
 	{ "name": "acc_q1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_q1_out", "role": "ap_vld" }} , 
 	{ "name": "acc_i1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "acc_i1_out", "role": "default" }} , 
 	{ "name": "acc_i1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_i1_out", "role": "ap_vld" }} , 
 	{ "name": "shift_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "shift_i", "role": "address0" }} , 
 	{ "name": "shift_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift_i", "role": "ce0" }} , 
 	{ "name": "shift_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "shift_i", "role": "q0" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c", "role": "q0" }} , 
 	{ "name": "shift_q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "shift_q", "role": "address0" }} , 
 	{ "name": "shift_q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift_q", "role": "ce0" }} , 
 	{ "name": "shift_q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "shift_q", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "fir_Pipeline_MAC_Loop_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_q1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "acc_i1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "shift_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shift_q", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "MAC_Loop_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5s_16s_21_1_1_U11", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_5s_21_1_1_U12", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_Pipeline_MAC_Loop_1 {
		add_ln53 {Type I LastRead 0 FirstWrite -1}
		acc_q1_out {Type O LastRead -1 FirstWrite 3}
		acc_i1_out {Type O LastRead -1 FirstWrite 3}
		shift_i {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		shift_q {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133", "Max" : "133"}
	, {"Name" : "Interval", "Min" : "133", "Max" : "133"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln53 { ap_none {  { add_ln53 in_data 0 7 } } }
	acc_q1_out { ap_vld {  { acc_q1_out out_data 1 16 }  { acc_q1_out_ap_vld out_vld 1 1 } } }
	acc_i1_out { ap_vld {  { acc_i1_out out_data 1 16 }  { acc_i1_out_ap_vld out_vld 1 1 } } }
	shift_i { ap_memory {  { shift_i_address0 mem_address 1 7 }  { shift_i_ce0 mem_ce 1 1 }  { shift_i_q0 mem_dout 0 16 } } }
	c { ap_memory {  { c_address0 mem_address 1 7 }  { c_ce0 mem_ce 1 1 }  { c_q0 mem_dout 0 5 } } }
	shift_q { ap_memory {  { shift_q_address0 mem_address 1 7 }  { shift_q_ce0 mem_ce 1 1 }  { shift_q_q0 mem_dout 0 16 } } }
}
