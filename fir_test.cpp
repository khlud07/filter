#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "fir.h"

int main() {
    const int SAMPLES   = 600;          // must be even — 2 samples per transfer
    const int TRANSFERS = SAMPLES / 2;

    FILE *fp  = fopen("/home/paket/Desktop/vitis/Read_the_docs/project_files/project1/fir128/fir128/out.dat",   "w");
    FILE *fin = fopen("/home/paket/Desktop/vitis/Read_the_docs/project_files/project1/fir128/fir128/input.dat", "r");

    if (!fin) { printf("ERROR: cannot open input.dat\n");  return 1; }
    if (!fp)  { printf("ERROR: cannot open out.dat\n");    return 1; }

    // Coefficients passed via AXI-Lite in HW; plain array in testbench
    coef_t coeffs[N] = {
        10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10,
        -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10,
        -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10,
        10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10,
        -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10,
        10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10,
        -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
    };

    fir_stream_t input_stream, output_stream;

    // Pack two IQ samples per 64-bit transfer and push into stream
    for (int i = 0; i < TRANSFERS; i++) {
        int v0, v1;
        fscanf(fin, "%d", &v0);
        fscanf(fin, "%d", &v1);

        two_iq_t packed = 0;
        packed.range(15,  0)  = (iq_t)v0;   // I0
        packed.range(31, 16)  = (iq_t)0;     // Q0 (real-only input → Q = 0)
        packed.range(47, 32)  = (iq_t)v1;    // I1
        packed.range(63, 48)  = (iq_t)0;     // Q1

        stream_t s;
        s.data = packed;
        s.keep = -1;
        s.last = (i == TRANSFERS - 1) ? 1 : 0;
        input_stream.write(s);
    }

    // One fir() call per 64-bit transfer (processes 2 samples each call)
    for (int i = 0; i < TRANSFERS; i++) {
        fir(output_stream, input_stream, coeffs);
    }

    // Unpack output — two samples per transfer
    for (int i = 0; i < TRANSFERS; i++) {
        stream_t out = output_stream.read();
        two_iq_t result = out.data;

        int i0 = (int)(iq_t)result.range(15,  0);
        int i1 = (int)(iq_t)result.range(47, 32);

        fprintf(fp, "%d\n", i0);
        fprintf(fp, "%d\n", i1);
        printf("%d %d\n", i * 2,     i0);
        printf("%d %d\n", i * 2 + 1, i1);
    }

    fclose(fp);
    fclose(fin);

    printf("Comparing against output data\n");
    if (system("diff -w /home/paket/Desktop/vitis/Read_the_docs/project_files/project1/fir128/fir128/out.dat "
           "/home/paket/Desktop/vitis/Read_the_docs/project_files/project1/fir128/fir128/out.gold.dat")) {
        printf("*******************************************\n");
        printf("FAIL: Output DOES NOT match the golden output\n");
        printf("*******************************************\n");
        return 1;
    } else {
        printf("*******************************************\n");
        printf("PASS: The output matches the golden output!\n");
        printf("*******************************************\n");
        return 0;
    }
}
