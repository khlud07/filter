set moduleName fir
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
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
	{ y_V_data_V int 64 regular {axi_s 1 volatile  { y Data } }  }
	{ y_V_keep_V int 8 regular {axi_s 1 volatile  { y Keep } }  }
	{ y_V_strb_V int 8 regular {axi_s 1 volatile  { y Strb } }  }
	{ y_V_last_V int 1 regular {axi_s 1 volatile  { y Last } }  }
	{ x_V_data_V int 64 regular {axi_s 0 volatile  { x Data } }  }
	{ x_V_keep_V int 8 regular {axi_s 0 volatile  { x Keep } }  }
	{ x_V_strb_V int 8 regular {axi_s 0 volatile  { x Strb } }  }
	{ x_V_last_V int 1 regular {axi_s 0 volatile  { x Last } }  }
	{ coeffs int 16 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "y_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "coeffs", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":511}} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ y_TDATA sc_out sc_lv 64 signal 0 } 
	{ y_TVALID sc_out sc_logic 1 outvld 3 } 
	{ y_TREADY sc_in sc_logic 1 outacc 3 } 
	{ y_TKEEP sc_out sc_lv 8 signal 1 } 
	{ y_TSTRB sc_out sc_lv 8 signal 2 } 
	{ y_TLAST sc_out sc_lv 1 signal 3 } 
	{ x_TDATA sc_in sc_lv 64 signal 4 } 
	{ x_TVALID sc_in sc_logic 1 invld 7 } 
	{ x_TREADY sc_out sc_logic 1 inacc 7 } 
	{ x_TKEEP sc_in sc_lv 8 signal 5 } 
	{ x_TSTRB sc_in sc_lv 8 signal 6 } 
	{ x_TLAST sc_in sc_lv 1 signal 7 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"fir","role":"start","value":"0","valid_bit":"0"},{"name":"fir","role":"continue","value":"0","valid_bit":"4"},{"name":"fir","role":"auto_start","value":"0","valid_bit":"7"},{"name":"coeffs","role":"data","value":"256"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"fir","role":"start","value":"0","valid_bit":"0"},{"name":"fir","role":"done","value":"0","valid_bit":"1"},{"name":"fir","role":"idle","value":"0","valid_bit":"2"},{"name":"fir","role":"ready","value":"0","valid_bit":"3"},{"name":"fir","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "y_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_V_data_V", "role": "default" }} , 
 	{ "name": "y_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "y_V_last_V", "role": "default" }} , 
 	{ "name": "y_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "y_V_last_V", "role": "default" }} , 
 	{ "name": "y_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_V_keep_V", "role": "default" }} , 
 	{ "name": "y_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_V_strb_V", "role": "default" }} , 
 	{ "name": "y_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V_last_V", "role": "default" }} , 
 	{ "name": "x_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_V_data_V", "role": "default" }} , 
 	{ "name": "x_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "x_V_last_V", "role": "default" }} , 
 	{ "name": "x_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "x_V_last_V", "role": "default" }} , 
 	{ "name": "x_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_V_keep_V", "role": "default" }} , 
 	{ "name": "x_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_V_strb_V", "role": "default" }} , 
 	{ "name": "x_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "fir",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "273", "EstimateLatencyMax" : "273",
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
			{"Name" : "coeffs", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_0_fu_201", "Port" : "coeffs", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "7", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_1_fu_214", "Port" : "coeffs", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_0_fu_201", "Port" : "shift_i", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "7", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_1_fu_214", "Port" : "shift_i", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "shift_q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_0_fu_201", "Port" : "shift_q", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "7", "SubInstance" : "grp_fir_Pipeline_MAC_Loop_1_fu_214", "Port" : "shift_q", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_q_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_0_fu_201", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "fir_Pipeline_MAC_Loop_0",
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
			{"Name" : "coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_q0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "acc_i0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "shift_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shift_q", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "MAC_Loop_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_0_fu_201.mac_muladd_16s_16s_32ns_32_4_1_U1", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_0_fu_201.mac_muladd_16s_16s_32ns_32_4_1_U2", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_0_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_1_fu_214", "Parent" : "0", "Child" : ["8", "9", "10"],
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
			{"Name" : "add_ln41", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_q1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "acc_i1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "shift_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shift_q", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "MAC_Loop_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_1_fu_214.mac_muladd_16s_16s_32ns_32_4_1_U10", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_1_fu_214.mac_muladd_16s_16s_32ns_32_4_1_U11", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_Pipeline_MAC_Loop_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_data_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_keep_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_strb_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y_V_last_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_data_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_keep_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_strb_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_x_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir {
		y_V_data_V {Type O LastRead -1 FirstWrite 6}
		y_V_keep_V {Type O LastRead -1 FirstWrite 6}
		y_V_strb_V {Type O LastRead -1 FirstWrite 6}
		y_V_last_V {Type O LastRead -1 FirstWrite 6}
		x_V_data_V {Type I LastRead 0 FirstWrite -1}
		x_V_keep_V {Type I LastRead 0 FirstWrite -1}
		x_V_strb_V {Type I LastRead 0 FirstWrite -1}
		x_V_last_V {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		ptr {Type IO LastRead -1 FirstWrite -1}
		shift_i {Type IO LastRead -1 FirstWrite -1}
		shift_q {Type IO LastRead -1 FirstWrite -1}}
	fir_Pipeline_MAC_Loop_0 {
		ptr_load {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		acc_q0_out {Type O LastRead -1 FirstWrite 3}
		acc_i0_out {Type O LastRead -1 FirstWrite 3}
		shift_i {Type I LastRead 0 FirstWrite -1}
		shift_q {Type I LastRead 0 FirstWrite -1}}
	fir_Pipeline_MAC_Loop_1 {
		add_ln41 {Type I LastRead 0 FirstWrite -1}
		coeffs {Type I LastRead 0 FirstWrite -1}
		acc_q1_out {Type O LastRead -1 FirstWrite 3}
		acc_i1_out {Type O LastRead -1 FirstWrite 3}
		shift_i {Type I LastRead 0 FirstWrite -1}
		shift_q {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "273", "Max" : "273"}
	, {"Name" : "Interval", "Min" : "274", "Max" : "274"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y_V_data_V { axis {  { y_TDATA out_data 1 64 } } }
	y_V_keep_V { axis {  { y_TKEEP out_data 1 8 } } }
	y_V_strb_V { axis {  { y_TSTRB out_data 1 8 } } }
	y_V_last_V { axis {  { y_TVALID out_vld 1 1 }  { y_TREADY out_acc 0 1 }  { y_TLAST out_data 1 1 } } }
	x_V_data_V { axis {  { x_TDATA in_data 0 64 } } }
	x_V_keep_V { axis {  { x_TKEEP in_data 0 8 } } }
	x_V_strb_V { axis {  { x_TSTRB in_data 0 8 } } }
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
