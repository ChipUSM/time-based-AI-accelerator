###############################################################################
# Created by write_sdc
###############################################################################
current_design spi_8_neuron_wrapper
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 20.0000 [get_ports {clk_PAD}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {mosi_PAD}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_PAD}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sck_PAD}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ss_PAD}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {miso_PAD}]
###############################################################################
# Environment
###############################################################################
set_driving_cell -lib_cell sg13g2_IOPadIn -pin {pad} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk_PAD}]
set_driving_cell -lib_cell sg13g2_IOPadOut4mA -pin {pad} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {miso_PAD}]
set_driving_cell -lib_cell sg13g2_IOPadIn -pin {pad} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mosi_PAD}]
set_driving_cell -lib_cell sg13g2_IOPadIn -pin {pad} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst_PAD}]
set_driving_cell -lib_cell sg13g2_IOPadIn -pin {pad} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sck_PAD}]
set_driving_cell -lib_cell sg13g2_IOPadIn -pin {pad} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ss_PAD}]
###############################################################################
# Design Rules
###############################################################################
