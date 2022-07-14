
# StateMover Path
set StateMoverPath ~/StateMover

# Project Name
set projName memcached

# define the output directory area.
set outputDir ./$projName

# if there is no project opened, open the project and reset the runs
set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
	open_project $outputDir/$projName.xpr
	reset_runs synth_1
	reset_runs impl_1
}

# launch synthesis
launch_runs synth_1 -jobs 8
wait_on_run synth_1

open_run synth_1
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_utilization -file $outputDir/post_synth_util.rpt

# run implementation
launch_runs impl_1 -jobs 8
wait_on_run impl_1

open_run impl_1
report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_utilization -file $outputDir/post_route_util.rpt

write_verilog -force $outputDir/${projName}_impl_netlist.v -mode funcsim
source $StateMoverPath/Scripts/get_ram_location.tcl > $outputDir/top.rl

# generate bitstream
write_debug_probes -force $outputDir/top.ltx
write_bitstream -force -logic_location_file $outputDir/top.bit

exit


