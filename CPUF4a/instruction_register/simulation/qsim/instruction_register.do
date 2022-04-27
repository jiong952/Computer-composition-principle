onerror {exit -code 1}
vlib work
vcom -work work instruction_register.vho
vcom -work work Waveform6.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.instruction_register_vhd_vec_tst
vcd file -direction instruction_register.msim.vcd
vcd add -internal instruction_register_vhd_vec_tst/*
vcd add -internal instruction_register_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
