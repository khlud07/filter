#include "fir.h"

void fir(fir_stream_t &y, fir_stream_t &x) {
#pragma HLS INTERFACE axis port=x
#pragma HLS INTERFACE axis port=y
#pragma HLS INTERFACE ap_ctrl_none port=return

    static const coef_t c[N] = {10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10,
        -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10,
        -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10,
        10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10,
        -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10,
        10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10,
        -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10};

    static data_t shift_reg[N];
    static int ptr = 0;
//  #pragma HLS ARRAY_PARTITION variable=shift_reg complete

    stream_t in_sample = x.read();
    data_t x_val = in_sample.data;
    shift_reg[ptr] = in_sample.data;

    acc_t acc = 0;

    MAC_Loop:
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS BIND_OP variable=acc op=mul impl=dsp
    	int idx = (ptr - i + N) & (N - 1);
    	acc += shift_reg[idx] * c[i];
    }
    ptr = (ptr + 1) & (N - 1);

    stream_t out_sample;
    out_sample.data = (data_t)acc;
    out_sample.last = in_sample.last;
    out_sample.keep = in_sample.keep;
    y.write(out_sample);
}
