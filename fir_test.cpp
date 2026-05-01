#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "fir.h"

int main() {
    const int SAMPLES = 600;
    FILE *fp, *fin;
    int i;

    fir_stream_t input_stream, output_stream;

    fin = fopen("input.dat", "r");
    fp  = fopen("out.dat", "w");

    // load all samples into input stream first
    for (i = 0; i < SAMPLES; i++) {
        int val;
        fscanf(fin, "%d", &val);
        stream_t s;
        s.data = (data_t)val;
        s.keep = -1;
        s.last = (i == SAMPLES - 1) ? 1 : 0;
        input_stream.write(s);
    }

    // process one sample at a time
    for (i = 0; i < SAMPLES; i++) {
        fir(output_stream, input_stream);
    }

    // read results and write to file
    for (i = 0; i < SAMPLES; i++) {
        stream_t out = output_stream.read();
        fprintf(fp, "%d\n", (int)out.data);
        printf("%i %d\n", i, (int)out.data);
    }

    fclose(fp);
    fclose(fin);

    printf("Comparing against output data\n");
    if (system("diff -w out.dat out.gold.dat")) {
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
