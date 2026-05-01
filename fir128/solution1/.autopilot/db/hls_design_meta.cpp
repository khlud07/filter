#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("y_TDATA", 16, hls_out, 0, "axis", "out_data", 1),
	Port_Property("y_TVALID", 1, hls_out, 3, "axis", "out_vld", 1),
	Port_Property("y_TREADY", 1, hls_in, 3, "axis", "out_acc", 1),
	Port_Property("y_TKEEP", 2, hls_out, 1, "axis", "out_data", 1),
	Port_Property("y_TSTRB", 2, hls_out, 2, "axis", "out_data", 1),
	Port_Property("y_TLAST", 1, hls_out, 3, "axis", "out_data", 1),
	Port_Property("x_TDATA", 16, hls_in, 4, "axis", "in_data", 1),
	Port_Property("x_TVALID", 1, hls_in, 7, "axis", "in_vld", 1),
	Port_Property("x_TREADY", 1, hls_out, 7, "axis", "in_acc", 1),
	Port_Property("x_TKEEP", 2, hls_in, 5, "axis", "in_data", 1),
	Port_Property("x_TSTRB", 2, hls_in, 6, "axis", "in_data", 1),
	Port_Property("x_TLAST", 1, hls_in, 7, "axis", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "fir";
