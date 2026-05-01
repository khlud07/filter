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
#pragma HLS ARRAY_PARTITION variable=shift_reg complete

    // read input sample from stream
    stream_t in_sample = x.read();

    data_t x_val = in_sample.data;
    acc_t acc = 0;

    Shift_Accum_Loop:
    for (int i = N-1; i >= 0; i--) {
#pragma HLS PIPELINE II=2
        if (i == 0) {
            acc += x_val * c[0];
            shift_reg[0] = x_val;
        } else {
            shift_reg[i] = shift_reg[i-1];
            acc += shift_reg[i] * c[i];
        }
    }

    // write output sample to stream
    stream_t out_sample;
    out_sample.data = (data_t)acc;
    out_sample.last = in_sample.last;  // propagate tlast for packet framing
    out_sample.keep = in_sample.keep;
    y.write(out_sample);
}
