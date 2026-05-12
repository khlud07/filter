set SynModuleInfo {
  {SRCNAME fir_Pipeline_MAC_Loop_0 MODELNAME fir_Pipeline_MAC_Loop_0 RTLNAME fir_fir_Pipeline_MAC_Loop_0
    SUBMODULES {
      {MODELNAME fir_mac_muladd_16s_16s_32ns_32_4_1 RTLNAME fir_mac_muladd_16s_16s_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fir_flow_control_loop_pipe_sequential_init RTLNAME fir_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fir_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fir_Pipeline_MAC_Loop_1 MODELNAME fir_Pipeline_MAC_Loop_1 RTLNAME fir_fir_Pipeline_MAC_Loop_1}
  {SRCNAME fir MODELNAME fir RTLNAME fir IS_TOP 1
    SUBMODULES {
      {MODELNAME fir_shift_i_RAM_2P_BRAM_1R1W RTLNAME fir_shift_i_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_control_s_axi RTLNAME fir_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME fir_regslice_both RTLNAME fir_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME fir_regslice_both_U}
    }
  }
}
