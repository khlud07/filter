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

    // Separate shift registers per channel
    static iq_t shift_i[N];
    static iq_t shift_q[N];
#pragma HLS BIND_STORAGE variable=shift_i type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=shift_q type=ram_2p impl=bram

    static int ptr = 0;

    // Read one 64-bit transfer = two IQ samples
    stream_t in_sample = x.read();
    two_iq_t data = in_sample.data;

    // Unpack both samples
    iq_t i0 = (iq_t)data.range(15, 0);   // I sample 0
    iq_t q0 = (iq_t)data.range(31, 16);  // Q sample 0
    iq_t i1 = (iq_t)data.range(47, 32);  // I sample 1
    iq_t q1 = (iq_t)data.range(63, 48);  // Q sample 1

    // ── Sample 0 ──────────────────────────────────────────
    shift_i[ptr] = i0;
    shift_q[ptr] = q0;

    acc_t acc_i0 = 0;
    acc_t acc_q0 = 0;

    MAC_Loop_0:
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS BIND_OP variable=acc_i0 op=mul impl=dsp
#pragma HLS BIND_OP variable=acc_q0 op=mul impl=dsp
        int idx = (ptr - i + N) & (N - 1);
        acc_i0 += (acc_t)shift_i[idx] * (acc_t)c[i];
        acc_q0 += (acc_t)shift_q[idx] * (acc_t)c[i];
    }
    ptr = (ptr + 1) & (N - 1);

    // ── Sample 1 ──────────────────────────────────────────
    shift_i[ptr] = i1;
    shift_q[ptr] = q1;

    acc_t acc_i1 = 0;
    acc_t acc_q1 = 0;

    MAC_Loop_1:
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS BIND_OP variable=acc_i1 op=mul impl=dsp
#pragma HLS BIND_OP variable=acc_q1 op=mul impl=dsp
        int idx = (ptr - i + N) & (N - 1);
        acc_i1 += (acc_t)shift_i[idx] * (acc_t)c[i];
        acc_q1 += (acc_t)shift_q[idx] * (acc_t)c[i];
    }
    ptr = (ptr + 1) & (N - 1);

    // Repack into 64-bit output
    two_iq_t result;
    result.range(15, 0)  = (iq_t)acc_i0;
    result.range(31, 16) = (iq_t)acc_q0;
    result.range(47, 32) = (iq_t)acc_i1;
    result.range(63, 48) = (iq_t)acc_q1;

    stream_t out_sample;
    out_sample.data = result;
    out_sample.last = in_sample.last;
    out_sample.keep = in_sample.keep;
    y.write(out_sample);
}
