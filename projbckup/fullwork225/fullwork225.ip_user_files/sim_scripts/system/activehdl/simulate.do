transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+system  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xil_defaultlib -L xlconcat_v2_1_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_14 -L dist_mem_gen_v8_0_14 -L lib_pkg_v1_0_3 -L lib_srl_fifo_v1_0_3 -L fifo_generator_v13_2_9 -L lib_fifo_v1_0_18 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_5 -L axi_quad_spi_v3_2_28 -L xlconstant_v1_1_8 -L axi_iic_v2_1_5 -L generic_baseblocks_v2_1_1 -L axi_register_slice_v2_1_29 -L axi_data_fifo_v2_1_28 -L axi_crossbar_v2_1_30 -L xbip_utils_v3_0_11 -L axi_utils_v2_0_7 -L fir_compiler_v7_2_20 -L util_vector_logic_v2_0_3 -L xlslice_v1_0_3 -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_11 -L axi_protocol_converter_v2_1_29 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.system xil_defaultlib.glbl

do {system.udo}

run

endsim

quit -force
