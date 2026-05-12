#ifndef FIR_H
#define FIR_H

#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

#define N 128

typedef ap_int<16>  iq_t;
typedef ap_int<16>  coef_t;
typedef ap_int<32>  acc_t;
typedef ap_uint<64> two_iq_t;
typedef ap_uint<32> iq_pack_t;
typedef iq_t data_t;

typedef hls::axis<two_iq_t, 0, 0, 0> stream_t;
typedef hls::stream<stream_t>         fir_stream_t;

void fir(fir_stream_t &y, fir_stream_t &x, coef_t coeffs[N]);  // ← coeffs added

#endif
