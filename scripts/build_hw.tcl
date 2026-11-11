launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
write_hw_platform -fixup -include_bit -force -file $origin_dir/build/system_wrapper.xsa