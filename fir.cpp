#include "fir.h"

void fir(fir_stream_t &y, fir_stream_t &x) {
#pragma HLS INTERFACE axis         port=x
#pragma HLS INTERFACE axis         port=y
#pragma HLS INTERFACE ap_ctrl_none port=return

    static const coef_t c[N] = {
        10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10,
        -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10,
        -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10,
        10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10,
        -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10,
        10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10,
        -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
    };

    static iq_t shift_i[N];
    static iq_t shift_q[N];
#pragma HLS ARRAY_PARTITION variable=shift_i complete
#pragma HLS ARRAY_PARTITION variable=shift_q complete

    static int ptr = 0;

    stream_t in_sample = x.read();
    iq_t x_i = in_sample.data(15, 0);
    iq_t x_q = in_sample.data(31, 16);

    shift_i[ptr] = x_i;
    shift_q[ptr] = x_q;

    acc_t acc_i = 0;
    acc_t acc_q = 0;

    MAC_Loop:
    for (int i = 0; i < N; i++) {
#pragma HLS UNROLL factor = 8
#pragma HLS BIND_OP variable=acc_i op=mul impl=dsp
#pragma HLS BIND_OP variable=acc_q op=mul impl=dsp
        int idx = (ptr - i + N) & (N - 1);
        acc_i += (acc_t)shift_i[idx] * (acc_t)c[i];
        acc_q += (acc_t)shift_q[idx] * (acc_t)c[i];
    }

    ptr = (ptr + 1) & (N - 1);

    iq_pack_t out_packed;
    out_packed(15, 0)  = (iq_t)acc_i;
    out_packed(31, 16) = (iq_t)acc_q;

    stream_t out_sample;
    out_sample.data = out_packed;
    out_sample.last = in_sample.last;
    out_sample.keep = in_sample.keep;
    y.write(out_sample);
}
