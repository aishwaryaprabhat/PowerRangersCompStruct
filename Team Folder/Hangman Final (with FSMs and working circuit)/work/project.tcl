set projDir "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/planAhead"
set projName "7Segment Numbers"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/mojo_top_0.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/reset_conditioner_1.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/multi_seven_seg_2.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/multi_seven_seg_2.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/keypad_reader_4.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/keypad_reader_4.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/register_6.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/hangman_display_14.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/counter_15.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/seven_seg_16.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/decoder_17.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/counter_15.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/seven_seg_16.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/decoder_17.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/counter_21.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/decoder_17.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/counter_21.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/decoder_17.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/counter_25.v" "D:/Library/Desktop/50.002 Computation Structure/Mojo/Hangman with no man/work/verilog/hangman_decoder_26.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "D:/Library/Desktop/50.002\ Computation\ Structure/Mojo/Hangman\ with\ no\ man/constraint/hangman_constraints.ucf"]
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
