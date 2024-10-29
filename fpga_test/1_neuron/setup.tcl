# Set the reference directory for relative paths
set origin_dir "."
set src_dir "C:/Users/danie/Documents/usm-vlsi-tools/shared_xserver/time-based-AI-accelerator/designs/src/ihp-chip-spi"

set project_name "1_neuron_test"

# Set the directory path for the new project
set proj_dir [file join $origin_dir $project_name]

# Create project and set the part number
create_project $project_name $proj_dir -part xc7a35tcpg236-1

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

set obj [current_project]
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "simulator_language" -value "Verilog" -objects $obj
set_property -name "target_language" -value "Verilog" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Add HDL source files
add_files -norecurse -fileset [get_filesets sources_1] [list \
 "[file normalize "$src_dir/spi_grid.v"]"\
 "[file normalize "$src_dir/spi_controller.v"]"\
 "[file normalize "$src_dir/spi.v"]"\
 "[file normalize "$src_dir/grid.v"]"\
 "[file normalize "$src_dir/dtc_wabs.v"]"\
 "[file normalize "$src_dir/neuron_wxor.v"]"\
 "[file normalize "$src_dir/tac_signed_wxor.v"]"\
 "[file normalize "$src_dir/relu.v"]"\
 "[file normalize "$src_dir/bias_and_quantize.v"]"\
 "[file normalize "$src_dir/abs_dtc.v"]"\
 "[file normalize "$src_dir/dtc.v"]"\
]

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
# Assign the "top level" file to be top.vhd
set_property -name "top" -value "top" -objects $obj

# Create 'constrs_1' fileset
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Add constraints files
add_files -fileset constrs_1 [list \
 "[file normalize "$origin_dir/constrs/constraints.xdc"]"\
]

# Create 'sim_1' fileset
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Add simulation files
add_files -fileset sim_1 -norecurse [list \
 "[file normalize "$src_dir/spi_grid_tb.v"]"\
]

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property -name "top" -value "testbench" -objects $ob

puts "Running simulation..." 
launch_simulation
run all