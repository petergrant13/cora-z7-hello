set origin_dir [file normalize [file dirname [info script]]/..]
create_project cora_uart $origin_dir/build -part xc7z007sclg400-1 -force
# optional: set_property board_part <cora z7-07s board part> [current_project]
add_files -fileset constrs_1 [glob $origin_dir/src/constraints/*.xdc]
source $origin_dir/bd/system_bd.tcl
make_wrapper -files [get_files system.bd] -top
add_files -norecurse [glob $origin_dir/build/cora_uart.gen/sources_1/bd/system/hdl/system_wrapper.v]
set_property top system_wrapper [current_fileset]
update_compile_order -fileset sources_1
