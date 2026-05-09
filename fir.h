#ifndef FIR_H
#define FIR_H

#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

#define N 128

typedef ap_int<16>  iq_t;    // single sample
typedef ap_int<16>  coef_t;
typedef ap_int<32>  acc_t;
typedef ap_int<32>  iq_pack_t; // Q[31:16] | I[15:0]
typedef iq_t data_t;

// 32-bit AXI stream: Q[31:16] | I[15:0]
typedef hls::axis<iq_pack_t, 0, 0, 0> stream_t;
typedef hls::stream<stream_t>          fir_stream_t;

void fir(fir_stream_t &y, fir_stream_t &x);

#endif
