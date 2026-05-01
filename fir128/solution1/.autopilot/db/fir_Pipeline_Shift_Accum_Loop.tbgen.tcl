set moduleName fir_Pipeline_Shift_Accum_Loop
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
set C_modelName {fir_Pipeline_Shift_Accum_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ mul_i29 int 20 regular  }
	{ in_sample_data int 16 regular  }
	{ acc_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "mul_i29", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "in_sample_data", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "acc_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mul_i29 sc_in sc_lv 20 signal 0 } 
	{ in_sample_data sc_in sc_lv 16 signal 1 } 
	{ acc_out sc_out sc_lv 16 signal 2 } 
	{ acc_out_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mul_i29", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "mul_i29", "role": "default" }} , 
 	{ "name": "in_sample_data", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_sample_data", "role": "default" }} , 
 	{ "name": "acc_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "acc_out", "role": "default" }} , 
 	{ "name": "acc_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "fir_Pipeline_Shift_Accum_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "260", "EstimateLatencyMax" : "260",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul_i29", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_sample_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_stream_stream_axis_0_shift_reg", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_116", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_127", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_117", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_118", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_119", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_120", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_121", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_122", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_123", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_124", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_125", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_126", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_128", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_129", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_130", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_131", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_132", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_87", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Shift_Accum_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_255_7_16_1_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5s_16s_20_1_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_Pipeline_Shift_Accum_Loop {
		mul_i29 {Type I LastRead 0 FirstWrite -1}
		in_sample_data {Type I LastRead 0 FirstWrite -1}
		acc_out {Type O LastRead -1 FirstWrite 2}
		fir_stream_stream_axis_0_shift_reg_9 {Type IO LastRead -1 FirstWrite -1}
		c {Type I LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_8 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_7 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_6 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_5 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_4 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_3 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_2 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg_1 {Type IO LastRead -1 FirstWrite -1}
		fir_stream_stream_axis_0_shift_reg {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_116 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_127 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_117 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_118 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_119 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_120 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_121 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_122 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_123 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_124 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_125 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_126 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_128 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_129 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_130 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_131 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_132 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_99 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firRN3hls6streamINS_4axisI6ap_intILi16EELm0ELm0ELm0ELh56ELb0EEELi0EEES6_E9sh_87 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "260", "Max" : "260"}
	, {"Name" : "Interval", "Min" : "260", "Max" : "260"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mul_i29 { ap_none {  { mul_i29 in_data 0 20 } } }
	in_sample_data { ap_none {  { in_sample_data in_data 0 16 } } }
	acc_out { ap_vld {  { acc_out out_data 1 16 }  { acc_out_ap_vld out_vld 1 1 } } }
}
