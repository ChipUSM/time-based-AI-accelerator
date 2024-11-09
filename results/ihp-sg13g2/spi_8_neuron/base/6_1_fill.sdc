###############################################################################
# Created by write_sdc
###############################################################################
current_design spi_8_neuron
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 10.4000 [get_ports {clk}]
set_propagated_clock [get_clocks {core_clock}]
set_input_delay 2.0800 -clock [get_clocks {core_clock}] -add_delay [get_ports {mosi}]
set_input_delay 2.0800 -clock [get_clocks {core_clock}] -add_delay [get_ports {rst}]
set_input_delay 2.0800 -clock [get_clocks {core_clock}] -add_delay [get_ports {sck}]
set_input_delay 2.0800 -clock [get_clocks {core_clock}] -add_delay [get_ports {ss}]
set_output_delay 2.0800 -clock [get_clocks {core_clock}] -add_delay [get_ports {miso}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
