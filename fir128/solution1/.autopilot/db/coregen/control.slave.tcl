dict set slaves control {ports {coeffs {type i_ap_memory width 16} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {coeffs {width 16}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
