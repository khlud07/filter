set SynModuleInfo {
  {SRCNAME fir_Pipeline_MAC_Loop_0 MODELNAME fir_Pipeline_MAC_Loop_0 RTLNAME fir_fir_Pipeline_MAC_Loop_0
    SUBMODULES {
      {MODELNAME fir_mul_5s_16s_21_1_1 RTLNAME fir_mul_5s_16s_21_1_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fir_mul_16s_5s_21_1_1 RTLNAME fir_mul_16s_5s_21_1_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fir_flow_control_loop_pipe_sequential_init RTLNAME fir_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fir_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fir_Pipeline_MAC_Loop_1 MODELNAME fir_Pipeline_MAC_Loop_1 RTLNAME fir_fir_Pipeline_MAC_Loop_1}
  {SRCNAME fir MODELNAME fir RTLNAME fir IS_TOP 1
    SUBMODULES {
      {MODELNAME fir_shift_i_RAM_2P_BRAM_1R1W RTLNAME fir_shift_i_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_c_ROM_AUTO_1R RTLNAME fir_c_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_regslice_both RTLNAME fir_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME fir_regslice_both_U}
    }
  }
}
