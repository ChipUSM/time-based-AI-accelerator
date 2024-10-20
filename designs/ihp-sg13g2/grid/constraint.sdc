set clk_name  clk
set clk_port_name clk_PAD
set clk_period 20 ; # 50 MHz
set clk_io_pct 0.2

set clk_port [get_ports $clk_port_name]

set clk_input_ports [get_ports {
    clk_PAD
    rst_n_PAD
    chip_in_PAD
    loopback_in_PAD
}]

set clk_output_ports [get_ports {
    chip_out_PAD
    loopback_out_PAD
}]

create_clock -name $clk_name -period $clk_period $clk_port

set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $clk_port
set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $clk_input_ports
set_driving_cell -lib_cell sg13g2_IOPadOut4mA -pin pad $clk_output_ports

set_input_delay  [expr $clk_period * $clk_io_pct] -clock $clk_name $clk_input_ports 
set_output_delay [expr $clk_period * $clk_io_pct] -clock $clk_name $clk_output_ports