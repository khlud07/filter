set moduleName fir
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {fir}
set C_modelType { void 0 }
set C_modelArgList {
	{ y_V_data_V int 16 regular {axi_s 1 volatile  { y Data } }  }
	{ y_V_keep_V int 2 regular {axi_s 1 volatile  { y Keep } }  }
	{ y_V_strb_V int 2 regular {axi_s 1 volatile  { y Strb } }  }
	{ y_V_last_V int 1 regular {axi_s 1 volatile  { y Last } }  }
	{ x_V_data_V int 16 regular {axi_s 0 volatile  { x Data } }  }
	{ x_V_keep_V int 2 regular {axi_s 0 volatile  { x Keep } }  }
	{ x_V_strb_V int 2 regular {axi_s 0 volatile  { x Strb } }  }
	{ x_V_last_V int 1 regular {axi_s 0 volatile  { x Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "y_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ y_TDATA sc_out sc_lv 16 signal 0 } 
	{ y_TVALID sc_out sc_logic 1 outvld 3 } 
	{ y_TREADY sc_in sc_logic 1 outacc 3 } 
	{ y_TKEEP sc_out sc_lv 2 signal 1 } 
	{ y_TSTRB sc_out sc_lv 2 signal 2 } 
	{ y_TLAST sc_out sc_lv 1 signal 3 } 
	{ x_TDATA sc_in sc_lv 16 signal 4 } 
	{ x_TVALID sc_in sc_logic 1 invld 7 } 
	{ x_TREADY sc_out sc_logic 1 inacc 7 } 
	{ x_TKEEP sc_in sc_lv 2 signal 5 } 
	{ x_TSTRB sc_in sc_lv 2 signal 6 } 
	{ x_TLAST sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "y_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_V_data_V", "role": "default" }} , 
 	{ "name": "y_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "y_V_last_V", "role": "default" }} , 
 	{ "name": "y_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "y_V_last_V", "role": "default" }} , 
 	{ "name": "y_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_V_keep_V", "role": "default" }} , 
 	{ "name": "y_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_V_strb_V", "role": "default" }} , 
 	{ "name": "y_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V_last_V", "role": "default" }} , 
 	{ "name": "x_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x_V_data_V", "role": "default" }} , 
 	{ "name": "x_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "x_V_last_V", "role": "default" }} , 
 	{ "name": "x_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "x_V_last_V", "role": "default" }} , 
 	{ "name": "x_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V_keep_V", "role": "default" }} , 
 	{ "name": "x_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_V_strb_V", "role": "default" }} , 
 	{ "name": "x_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "fir",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137", "EstimateLatencyMax" : "137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "y",
				"BlockSignal" : [
					{"Name" : "y_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "y"},
			{"Name" : "y_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "y"},
			{"Name" : "y_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "y"},
			{"Name" : "x_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "x",
				"BlockSignal" : [
					{"Name" : "x_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "x"},
			{"Name" : "x_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "x"},
			{"Name" : "x_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "x"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_fu_112", "Port" : "shift_reg", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_fu_112", "Port" : "c", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_reg_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_fu_112", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "fir_Pipeline_MAC_Loop",
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
			{"Name" : "ptr_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "MAC_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_fu_112.c_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_fu_112.mac_muladd_5s_16s_27s_27_4_1_U1", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_last_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_data_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_keep_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_strb_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir {
		y_V_data_V {Type O LastRead -1 FirstWrite 3}
		y_V_keep_V {Type O LastRead -1 FirstWrite 3}
		y_V_strb_V {Type O LastRead -1 FirstWrite 3}
		y_V_last_V {Type O LastRead -1 FirstWrite 3}
		x_V_data_V {Type I LastRead 0 FirstWrite -1}
		x_V_keep_V {Type I LastRead 0 FirstWrite -1}
		x_V_strb_V {Type I LastRead 0 FirstWrite -1}
		x_V_last_V {Type I LastRead 0 FirstWrite -1}
		ptr {Type IO LastRead -1 FirstWrite -1}
		shift_reg {Type IO LastRead -1 FirstWrite -1}
		c {Type I LastRead -1 FirstWrite -1}}
	fir_Pipeline_MAC_Loop {
		ptr_load {Type I LastRead 0 FirstWrite -1}
		acc_out {Type O LastRead -1 FirstWrite 3}
		shift_reg {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "137", "Max" : "137"}
	, {"Name" : "Interval", "Min" : "138", "Max" : "138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y_V_data_V { axis {  { y_TDATA out_data 1 16 } } }
	y_V_keep_V { axis {  { y_TKEEP out_data 1 2 } } }
	y_V_strb_V { axis {  { y_TSTRB out_data 1 2 } } }
	y_V_last_V { axis {  { y_TVALID out_vld 1 1 }  { y_TREADY out_acc 0 1 }  { y_TLAST out_data 1 1 } } }
	x_V_data_V { axis {  { x_TDATA in_data 0 16 } } }
	x_V_keep_V { axis {  { x_TKEEP in_data 0 2 } } }
	x_V_strb_V { axis {  { x_TSTRB in_data 0 2 } } }
	x_V_last_V { axis {  { x_TVALID in_vld 0 1 }  { x_TREADY in_acc 1 1 }  { x_TLAST in_data 0 1 } } }
}

set maxi_interface_dict [dict create]

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
