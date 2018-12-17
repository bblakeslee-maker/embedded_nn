# create_clock -period 20.000 -name sys_clk_pin -waveform {0.000 10.000} -add [get_ports clk]
# ==== Clock input ====
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

# ==== Reset Button ====
set_property PACKAGE_PIN M18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# ==== UART ====
set_property -dict {PACKAGE_PIN C4  IOSTANDARD LVCMOS33} [get_ports {uart_rx}]
set_property -dict {PACKAGE_PIN D4  IOSTANDARD LVCMOS33} [get_ports {uart_tx}]