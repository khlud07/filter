set SynModuleInfo {
  {SRCNAME fir_Pipeline_MAC_Loop MODELNAME fir_Pipeline_MAC_Loop RTLNAME fir_fir_Pipeline_MAC_Loop
    SUBMODULES {
      {MODELNAME fir_sparsemux_257_7_16_1_1 RTLNAME fir_sparsemux_257_7_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME fir_mul_5s_16s_21_1_1 RTLNAME fir_mul_5s_16s_21_1_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fir_mul_16s_5s_21_1_1 RTLNAME fir_mul_16s_5s_21_1_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_charbkb RTLNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_charbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_charcud RTLNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_charcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_chardEe RTLNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_chardEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_chareOg RTLNAME fir_fir_Pipeline_MAC_Loop_fir_stream_stream_axis_ap_int_0ul_0ul_0ul_unsigned_chareOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_flow_control_loop_pipe_sequential_init RTLNAME fir_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fir_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fir MODELNAME fir RTLNAME fir IS_TOP 1
    SUBMODULES {
      {MODELNAME fir_regslice_both RTLNAME fir_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME fir_regslice_both_U}
    }
  }
}
