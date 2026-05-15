transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_15
vlib activehdl/processing_system7_vip_v1_0_17
vlib activehdl/xil_defaultlib
vlib activehdl/xlconcat_v2_1_5
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_14
vlib activehdl/dist_mem_gen_v8_0_14
vlib activehdl/lib_pkg_v1_0_3
vlib activehdl/lib_srl_fifo_v1_0_3
vlib activehdl/fifo_generator_v13_2_9
vlib activehdl/lib_fifo_v1_0_18
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_quad_spi_v3_2_28
vlib activehdl/xlconstant_v1_1_8
vlib activehdl/axi_iic_v2_1_5
vlib activehdl/generic_baseblocks_v2_1_1
vlib activehdl/axi_register_slice_v2_1_29
vlib activehdl/axi_data_fifo_v2_1_28
vlib activehdl/axi_crossbar_v2_1_30
vlib activehdl/xbip_utils_v3_0_11
vlib activehdl/axi_utils_v2_0_7
vlib activehdl/fir_compiler_v7_2_20
vlib activehdl/util_vector_logic_v2_0_3
vlib activehdl/xlslice_v1_0_3
vlib activehdl/axis_infrastructure_v1_1_1
vlib activehdl/axis_data_fifo_v2_0_11
vlib activehdl/axi_protocol_converter_v2_1_29

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 activehdl/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 activehdl/processing_system7_vip_v1_0_17
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconcat_v2_1_5 activehdl/xlconcat_v2_1_5
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 activehdl/proc_sys_reset_v5_0_14
vmap dist_mem_gen_v8_0_14 activehdl/dist_mem_gen_v8_0_14
vmap lib_pkg_v1_0_3 activehdl/lib_pkg_v1_0_3
vmap lib_srl_fifo_v1_0_3 activehdl/lib_srl_fifo_v1_0_3
vmap fifo_generator_v13_2_9 activehdl/fifo_generator_v13_2_9
vmap lib_fifo_v1_0_18 activehdl/lib_fifo_v1_0_18
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_28 activehdl/axi_quad_spi_v3_2_28
vmap xlconstant_v1_1_8 activehdl/xlconstant_v1_1_8
vmap axi_iic_v2_1_5 activehdl/axi_iic_v2_1_5
vmap generic_baseblocks_v2_1_1 activehdl/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_29 activehdl/axi_register_slice_v2_1_29
vmap axi_data_fifo_v2_1_28 activehdl/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 activehdl/axi_crossbar_v2_1_30
vmap xbip_utils_v3_0_11 activehdl/xbip_utils_v3_0_11
vmap axi_utils_v2_0_7 activehdl/axi_utils_v2_0_7
vmap fir_compiler_v7_2_20 activehdl/fir_compiler_v7_2_20
vmap util_vector_logic_v2_0_3 activehdl/util_vector_logic_v2_0_3
vmap xlslice_v1_0_3 activehdl/xlslice_v1_0_3
vmap axis_infrastructure_v1_1_1 activehdl/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_11 activehdl/axis_data_fifo_v2_0_11
vmap axi_protocol_converter_v2_1_29 activehdl/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -sv2k12 "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"/home/paket/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/paket/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/home/paket/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -sv2k12 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -sv2k12 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_sys_ps7_0/sim/system_sys_ps7_0.v" \

vlog -work xlconcat_v2_1_5  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_sys_concat_intc_0/sim/system_sys_concat_intc_0.v" \

vcom -work lib_cdc_v1_0_2 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/system/ip/system_sys_rstgen_0/sim/system_sys_rstgen_0.vhd" \

vlog -work dist_mem_gen_v8_0_14  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/2ec6/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_3 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_3 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/02c4/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_18 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/1531/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_28 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/98d8/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/system/ip/system_axi_spi_0/sim/system_axi_spi_0.vhd" \

vlog -work xlconstant_v1_1_8  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_GND_1_0/sim/system_GND_1_0.v" \

vcom -work axi_iic_v2_1_5 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/0f29/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/system/ip/system_axi_iic_main_0/sim/system_axi_iic_main_0.vhd" \

vlog -work generic_baseblocks_v2_1_1  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_addsub.v" \
"../../../bd/system/ipshared/697c/_1/xilinx/common/ad_data_clk.v" \
"../../../bd/system/ipshared/697c/_1/xilinx/common/ad_data_in.v" \
"../../../bd/system/ipshared/697c/_1/xilinx/common/ad_data_out.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_datafmt.v" \
"../../../bd/system/ipshared/697c/_1/xilinx/common/ad_dcfilter.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_dds.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_dds_1.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_dds_2.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_dds_cordic_pipe.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_dds_sine.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_dds_sine_cordic.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_iqcor.v" \
"../../../bd/system/ipshared/697c/_1/xilinx/common/ad_mul.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_pnmon.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_pps_receiver.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_rst.v" \
"../../../bd/system/ipshared/697c/_1/common/ad_tdd_control.v" \
"../../../bd/system/ipshared/697c/xilinx/axi_ad9361_cmos_if.v" \
"../../../bd/system/ipshared/697c/xilinx/axi_ad9361_lvds_if.v" \
"../../../bd/system/ipshared/697c/axi_ad9361_rx.v" \
"../../../bd/system/ipshared/697c/axi_ad9361_rx_channel.v" \
"../../../bd/system/ipshared/697c/axi_ad9361_rx_pnmon.v" \
"../../../bd/system/ipshared/697c/axi_ad9361_tdd.v" \
"../../../bd/system/ipshared/697c/axi_ad9361_tdd_if.v" \
"../../../bd/system/ipshared/697c/axi_ad9361_tx.v" \
"../../../bd/system/ipshared/697c/axi_ad9361_tx_channel.v" \
"../../../bd/system/ipshared/697c/_1/common/up_adc_channel.v" \
"../../../bd/system/ipshared/697c/_1/common/up_adc_common.v" \
"../../../bd/system/ipshared/697c/_1/common/up_axi.v" \
"../../../bd/system/ipshared/697c/_1/common/up_clock_mon.v" \
"../../../bd/system/ipshared/697c/_1/common/up_dac_channel.v" \
"../../../bd/system/ipshared/697c/_1/common/up_dac_common.v" \
"../../../bd/system/ipshared/697c/_1/common/up_delay_cntrl.v" \
"../../../bd/system/ipshared/697c/_1/common/up_tdd_cntrl.v" \
"../../../bd/system/ipshared/697c/_1/common/up_xfer_cntrl.v" \
"../../../bd/system/ipshared/697c/_1/common/up_xfer_status.v" \
"../../../bd/system/ipshared/697c/axi_ad9361.v" \
"../../../bd/system/ip/system_axi_ad9361_0/sim/system_axi_ad9361_0.v" \
"../../../bd/system/ipshared/2c96/sync_gray.v" \
"../../../bd/system/ipshared/2c96/sync_bits.v" \
"../../../bd/system/ipshared/2c96/sync_data.v" \
"../../../bd/system/ipshared/2c96/sync_event.v" \
"../../../bd/system/ipshared/f158/_1/common/ad_mem.v" \
"../../../bd/system/ipshared/f158/util_axis_fifo_address_generator.v" \
"../../../bd/system/ipshared/f158/util_axis_fifo.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_axi_ad9361_dac_dma_0/sim/system_axi_ad9361_dac_dma_0_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ipshared/9e99/_1/common/ad_mem_asym.v" \
"../../../bd/system/ipshared/9e99/address_generator.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_burst_memory.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_regmap.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_regmap_request.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_reset_manager.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_resize_dest.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_resize_src.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_response_manager.v" \
"../../../bd/system/ipshared/9e99/axi_dmac_transfer.v" \
"../../../bd/system/ipshared/9e99/axi_register_slice.v" \
"../../../bd/system/ipshared/9e99/data_mover.v" \
"../../../bd/system/ipshared/9e99/dest_axi_mm.v" \
"../../../bd/system/ipshared/9e99/dest_axi_stream.v" \
"../../../bd/system/ipshared/9e99/dest_fifo_inf.v" \
"../../../bd/system/ipshared/9e99/dmac_2d_transfer.v" \
"../../../bd/system/ipshared/9e99/dmac_sg.v" \
"../../../bd/system/ipshared/9e99/request_arb.v" \
"../../../bd/system/ipshared/9e99/request_generator.v" \
"../../../bd/system/ipshared/9e99/response_generator.v" \
"../../../bd/system/ipshared/9e99/response_handler.v" \
"../../../bd/system/ipshared/9e99/splitter.v" \
"../../../bd/system/ipshared/9e99/src_axi_mm.v" \
"../../../bd/system/ipshared/9e99/src_axi_stream.v" \
"../../../bd/system/ipshared/9e99/src_fifo_inf.v" \
"../../../bd/system/ipshared/9e99/axi_dmac.v" \
"../../../bd/system/ip/system_axi_ad9361_dac_dma_0/sim/system_axi_ad9361_dac_dma_0.v" \
"../../../bd/system/ip/system_cdc_sync_active_0/sim/system_cdc_sync_active_0.v" \
"../../../bd/system/ip/system_rate_gen_0/sim/system_rate_gen_0.v" \

vcom -work xbip_utils_v3_0_11 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/9836/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_7 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/e392/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_20 -  \
"../../../../pluto.gen/sources_1/bd/system/ipshared/1055/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/system/ip/system_fir_interpolation_0_0/sim/system_fir_interpolation_0_0.vhd" \

vlog -work util_vector_logic_v2_0_3  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_logic_and_0_0/sim/system_logic_and_0_0.v" \
"../../../bd/system/ip/system_out_mux_0_0/sim/system_out_mux_0_0.v" \

vcom -work xil_defaultlib -  \
"../../../bd/system/ip/system_fir_interpolation_1_0/sim/system_fir_interpolation_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_logic_and_1_0/sim/system_logic_and_1_0.v" \
"../../../bd/system/ip/system_out_mux_1_0/sim/system_out_mux_1_0.v" \
"../../../bd/system/ip/system_VCC_1_0/sim/system_VCC_1_0.v" \
"../../../bd/system/ip/system_GND_32_0/sim/system_GND_32_0.v" \

vlog -work xlslice_v1_0_3  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_interp_slice_0/sim/system_interp_slice_0.v" \
"../../../bd/system/ipshared/4e47/common/ad_perfect_shuffle.v" \
"../../../bd/system/ipshared/4e47/_1/util_pack_common/pack_ctrl.v" \
"../../../bd/system/ipshared/4e47/_1/util_pack_common/pack_interconnect.v" \
"../../../bd/system/ipshared/4e47/_1/util_pack_common/pack_network.v" \
"../../../bd/system/ipshared/4e47/_1/util_pack_common/pack_shell.v" \
"../../../bd/system/ipshared/4e47/util_upack2_impl.v" \
"../../../bd/system/ipshared/4e47/util_upack2.v" \
"../../../bd/system/ip/system_tx_upack_0/sim/system_tx_upack_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_axi_ad9361_adc_dma_0/sim/system_axi_ad9361_adc_dma_0_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_axi_ad9361_adc_dma_0/sim/system_axi_ad9361_adc_dma_0.v" \
"../../../bd/system/ip/system_cdc_sync_active_1/sim/system_cdc_sync_active_1.v" \

vcom -work xil_defaultlib -  \
"../../../bd/system/ip/system_fir_decimation_0_0/sim/system_fir_decimation_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_out_mux_0_1/sim/system_out_mux_0_1.v" \

vcom -work xil_defaultlib -  \
"../../../bd/system/ip/system_fir_decimation_1_0/sim/system_fir_decimation_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_out_mux_1_1/sim/system_out_mux_1_1.v" \
"../../../bd/system/ip/system_decim_slice_0/sim/system_decim_slice_0.v" \
"../../../bd/system/ipshared/d362/util_cpack2_impl.v" \
"../../../bd/system/ipshared/d362/util_cpack2.v" \
"../../../bd/system/ip/system_cpack_0/sim/system_cpack_0.v" \
"../../../bd/system/ip/system_logic_or_0/sim/system_logic_or_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ipshared/35e1/axi_tdd_pkg.sv" \
"../../../bd/system/ipshared/35e1/axi_tdd_channel.sv" \
"../../../bd/system/ipshared/35e1/axi_tdd_counter.sv" \
"../../../bd/system/ipshared/35e1/axi_tdd_regmap.sv" \
"../../../bd/system/ipshared/35e1/axi_tdd_sync_gen.sv" \
"../../../bd/system/ipshared/35e1/axi_tdd.sv" \
"../../../bd/system/ip/system_tdd_core_0/sim/system_tdd_core_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_tdd_ch_slice_0_0/sim/system_tdd_ch_slice_0_0.v" \
"../../../bd/system/ip/system_tdd_ch_slice_1_0/sim/system_tdd_ch_slice_1_0.v" \
"../../../bd/system/ip/system_tdd_ch_slice_2_0/sim/system_tdd_ch_slice_2_0.v" \
"../../../bd/system/ip/system_logic_inv_0/sim/system_logic_inv_0.v" \
"../../../bd/system/ip/system_logic_or_1_0/sim/system_logic_or_1_0.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_c_RAM_AUTO_1R1W.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_control_s_axi.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_fir_Pipeline_MAC_Loop_0.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_fir_Pipeline_MAC_Loop_1.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_fir_Pipeline_VITIS_LOOP_13_1.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_flow_control_loop_pipe_sequential_init.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_hls_deadlock_idx0_monitor.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_mac_muladd_16s_16s_32ns_32_4_1.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_regslice_both.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir_shift_i_RAM_2P_BRAM_1R1W.v" \
"../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog/fir.v" \
"../../../bd/system/ip/system_fir_0_0/sim/system_fir_0_0.v" \

vlog -work axis_infrastructure_v1_1_1  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_11  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/68dc/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_axis_data_fifo_0_0/sim/system_axis_data_fifo_0_0.v" \
"../../../bd/system/ip/system_util_vector_logic_0_0/sim/system_util_vector_logic_0_0.v" \

vlog -work axi_protocol_converter_v2_1_29  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../../pluto.gen/sources_1/bd/system/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../../bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/faa2/hdl/verilog" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../pluto.gen/sources_1/bd/system/ipshared/9e99" "+incdir+../../../../pluto.gen/sources_1/bd/system/ip/system_fir_0_0/drivers/fir_v1_0/src" "+incdir+/home/paket/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l xlconcat_v2_1_5 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l dist_mem_gen_v8_0_14 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_28 -l xlconstant_v1_1_8 -l axi_iic_v2_1_5 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l axi_protocol_converter_v2_1_29 \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

