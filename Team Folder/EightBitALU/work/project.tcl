set projDir "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/planAhead"
set projName "EightBitAdder"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/mojo_top_0.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/adder8_1.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/zvn_2.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/boole8_3.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/compare8_4.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/shift8_5.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/mux_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/EightBitALU/work/verilog/reset_conditioner_7.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "D:/Library/Desktop/50.002\ Computation\ Structure/Mojo/EightBitALU/constraint/io.ucf" "D:/Software/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
