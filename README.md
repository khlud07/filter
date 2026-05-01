# FIR Filter — Vitis HLS

128-tap. Fixed-point 16-bit data and coefficients, 32-bit accumulator. Target clock 10ns (100MHz). Coefficients stored as `static const` to avoid mux chain. Shift register fully partitioned for parallel access. Current latency ~140 cycles.

## Resource Usage (post-synthesis)
- DSPs: 1
- BRAMs: 1
- FFs / LUTs: 153 / 234

## Planned Optimizations
- Split shift and MAC into separate loops - done, shift loop deleted;
- Explicit DSP48 binding - done;
- Dataflow between shift and MAC stages;
- AXI Stream interface - done;
