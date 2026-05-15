# =============================================================================
# axi_ad9361_constr.xdc
# NanoSDR — XC7Z010CLG400
# Port names verified via get_ports output
# IOSTANDARD: LVCMOS18 (AD9363 I/O bank is 1.8V)
# =============================================================================

# -----------------------------------------------------------------------------
# RX Clock & Frame
# DATA_CLK_P (AD9363 G11) -> ZYNQ H16
# RX_FRAME_P (AD9363 G8)  -> ZYNQ K19
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN H16  IOSTANDARD LVCMOS18} [get_ports rx_clk_in]
set_property  -dict {PACKAGE_PIN K19  IOSTANDARD LVCMOS18} [get_ports rx_frame_in]

# -----------------------------------------------------------------------------
# RX Data — Port 1 (P1_Dxx / RX_Dxx)
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN E17  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[0]}]
set_property  -dict {PACKAGE_PIN G18  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[1]}]
set_property  -dict {PACKAGE_PIN E18  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[2]}]
set_property  -dict {PACKAGE_PIN G19  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[3]}]
set_property  -dict {PACKAGE_PIN B20  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[4]}]
set_property  -dict {PACKAGE_PIN F20  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[5]}]
set_property  -dict {PACKAGE_PIN H20  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[6]}]
set_property  -dict {PACKAGE_PIN C20  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[7]}]
set_property  -dict {PACKAGE_PIN A20  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[8]}]
set_property  -dict {PACKAGE_PIN D19  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[9]}]
set_property  -dict {PACKAGE_PIN B19  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[10]}]
set_property  -dict {PACKAGE_PIN J20  IOSTANDARD LVCMOS18} [get_ports {rx_data_in[11]}]

# -----------------------------------------------------------------------------
# TX Feedback Clock & Frame
# FB_CLK_P   (AD9363 F10) -> ZYNQ K17
# TX_FRAME_P (AD9363 G9)  -> ZYNQ D20
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN K17  IOSTANDARD LVCMOS18} [get_ports tx_clk_out]
set_property  -dict {PACKAGE_PIN D20  IOSTANDARD LVCMOS18} [get_ports tx_frame_out]

# -----------------------------------------------------------------------------
# TX Data — Port 0 (P0_Dxx / TX_Dxx)
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN G17  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[0]}]
set_property  -dict {PACKAGE_PIN H18  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[1]}]
set_property  -dict {PACKAGE_PIN G20  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[2]}]
set_property  -dict {PACKAGE_PIN J18  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[3]}]
set_property  -dict {PACKAGE_PIN D18  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[4]}]
set_property  -dict {PACKAGE_PIN J19  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[5]}]
set_property  -dict {PACKAGE_PIN K16  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[6]}]
set_property  -dict {PACKAGE_PIN K18  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[7]}]
set_property  -dict {PACKAGE_PIN L20  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[8]}]
set_property  -dict {PACKAGE_PIN L19  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[9]}]
set_property  -dict {PACKAGE_PIN E19  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[10]}]
set_property  -dict {PACKAGE_PIN L16  IOSTANDARD LVCMOS18} [get_ports {tx_data_out[11]}]

# -----------------------------------------------------------------------------
# AD9363 Control — direct PL ports
# ENABLE (AD9363 G6) -> ZYNQ T20
# TXNRX  (AD9363 H4) -> ZYNQ U20
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN T20  IOSTANDARD LVCMOS18} [get_ports enable]
set_property  -dict {PACKAGE_PIN U20  IOSTANDARD LVCMOS18} [get_ports txnrx]

# -----------------------------------------------------------------------------
# AD9363 GPIO — routed through gpio_ ports
# RESETB  (AD9363 K5) -> ZYNQ W19  -> gpio_resetb
# EN_AGC  (AD9363 G5) -> ZYNQ U18  -> gpio_en_agc
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN W19  IOSTANDARD LVCMOS18} [get_ports gpio_resetb]
set_property  -dict {PACKAGE_PIN U18  IOSTANDARD LVCMOS18} [get_ports gpio_en_agc]

# -----------------------------------------------------------------------------
# gpio_ctl[0..3] = CTRL_IN (ZYNQ -> AD9363)
# CTRL_IN0 (AD9363 C5) -> ZYNQ N20
# CTRL_IN1 (AD9363 C6) -> ZYNQ P15
# CTRL_IN2 (AD9363 D6) -> ZYNQ P14
# CTRL_IN3 (AD9363 D5) -> ZYNQ P16
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN N20  IOSTANDARD LVCMOS18} [get_ports {gpio_ctl[0]}]
set_property  -dict {PACKAGE_PIN P15  IOSTANDARD LVCMOS18} [get_ports {gpio_ctl[1]}]
set_property  -dict {PACKAGE_PIN P14  IOSTANDARD LVCMOS18} [get_ports {gpio_ctl[2]}]
set_property  -dict {PACKAGE_PIN P16  IOSTANDARD LVCMOS18} [get_ports {gpio_ctl[3]}]

# -----------------------------------------------------------------------------
# gpio_status[0..7] = CTRL_OUT (AD9363 -> ZYNQ)
# CTRL_OUT0 (AD9363 D4) -> ZYNQ P20
# CTRL_OUT1 (AD9363 E4) -> ZYNQ R18
# CTRL_OUT2 (AD9363 E5) -> ZYNQ R17
# CTRL_OUT3 (AD9363 E6) -> ZYNQ N18
# CTRL_OUT4 (AD9363 F6) -> ZYNQ T17
# CTRL_OUT5 (AD9363 F5) -> ZYNQ N17
# CTRL_OUT6 (AD9363 F4) -> ZYNQ R19
# CTRL_OUT7 (AD9363 G4) -> ZYNQ T19
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN P20  IOSTANDARD LVCMOS18} [get_ports {gpio_status[0]}]
set_property  -dict {PACKAGE_PIN R18  IOSTANDARD LVCMOS18} [get_ports {gpio_status[1]}]
set_property  -dict {PACKAGE_PIN R17  IOSTANDARD LVCMOS18} [get_ports {gpio_status[2]}]
set_property  -dict {PACKAGE_PIN N18  IOSTANDARD LVCMOS18} [get_ports {gpio_status[3]}]
set_property  -dict {PACKAGE_PIN T17  IOSTANDARD LVCMOS18} [get_ports {gpio_status[4]}]
set_property  -dict {PACKAGE_PIN N17  IOSTANDARD LVCMOS18} [get_ports {gpio_status[5]}]
set_property  -dict {PACKAGE_PIN R19  IOSTANDARD LVCMOS18} [get_ports {gpio_status[6]}]
set_property  -dict {PACKAGE_PIN T19  IOSTANDARD LVCMOS18} [get_ports {gpio_status[7]}]

# -----------------------------------------------------------------------------
# SPI — routed through PL fabric (not PS MIO)
# SPI_ENB (AD9363 K6) -> ZYNQ Y19  -> spi_csn
# SPI_CLK (AD9363 J5) -> ZYNQ W20  -> spi_clk
# SPI_DI  (AD9363 J4) -> ZYNQ V20  -> spi_mosi
# SPI_DO  (AD9363 L6) -> ZYNQ Y18  -> spi_miso
# -----------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN Y19  IOSTANDARD LVCMOS18} [get_ports spi_csn]
set_property  -dict {PACKAGE_PIN W20  IOSTANDARD LVCMOS18} [get_ports spi_clk]
set_property  -dict {PACKAGE_PIN V20  IOSTANDARD LVCMOS18} [get_ports spi_mosi]
set_property  -dict {PACKAGE_PIN Y18  IOSTANDARD LVCMOS18} [get_ports spi_miso]

# -----------------------------------------------------------------------------
# UNKNOWN PORTS — clk_out and pl_gpio0..4
# These are board-specific (GPIO header, LEDs, PPS output, etc.)
# YOU MUST assign these from your board schematic, or comment them out
# if unused — Vivado will error on unplaced ports at bitstream generation.
#
# set_property  -dict {PACKAGE_PIN ???  IOSTANDARD LVCMOS18} [get_ports clk_out]
# set_property  -dict {PACKAGE_PIN ???  IOSTANDARD LVCMOS18} [get_ports pl_gpio0]
# set_property  -dict {PACKAGE_PIN ???  IOSTANDARD LVCMOS18} [get_ports pl_gpio1]
# set_property  -dict {PACKAGE_PIN ???  IOSTANDARD LVCMOS18} [get_ports pl_gpio2]
# set_property  -dict {PACKAGE_PIN ???  IOSTANDARD LVCMOS18} [get_ports pl_gpio3]
# set_property  -dict {PACKAGE_PIN ???  IOSTANDARD LVCMOS18} [get_ports pl_gpio4]
# -----------------------------------------------------------------------------
