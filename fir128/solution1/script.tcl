############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project fir128
set_top fir
add_files fir.cpp
add_files fir.h
add_files -tb fir_test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 10 -name default
config_export -output /home/paket/Desktop/vitis/Read_the_docs/project_files/project1/fir128/.git
source "./fir128/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/paket/Desktop/vitis/Read_the_docs/project_files/project1/fir128/.git
