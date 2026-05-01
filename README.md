# FIR Filter — Vitis HLS

128-tap. Fixed-point 16-bit data and coefficients, 32-bit accumulator. Target clock 10ns (100MHz). Coefficients stored as `static const` to avoid mux chain. Shift register fully partitioned for parallel access. Current latency ~262 cycles.

## Resource Usage (post-synthesis)
- DSPs: 1
- BRAMs: 0
- FFs / LUTs: 2235 / 905

## Planned Optimizations
- Split shift and MAC into separate loops 
- Explicit DSP48 binding
- Dataflow between shift and MAC stages
- AXI Stream interface
