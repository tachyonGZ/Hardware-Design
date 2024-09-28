transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../../add_dec4.gen/sources_1/bd/add_dec4/ipshared/4f00/src/add_dec.v" \
"../../../../add_dec4.gen/sources_1/bd/add_dec4/ip/add_dec4_add_dec_0_0/sim/add_dec4_add_dec_0_0.v" \
"../../../../add_dec4.gen/sources_1/bd/add_dec4/ip/add_dec4_add_dec_0_1/sim/add_dec4_add_dec_0_1.v" \
"../../../../add_dec4.gen/sources_1/bd/add_dec4/ip/add_dec4_add_dec_0_2/sim/add_dec4_add_dec_0_2.v" \
"../../../../add_dec4.gen/sources_1/bd/add_dec4/ip/add_dec4_add_dec_0_3/sim/add_dec4_add_dec_0_3.v" \
"../../../../add_dec4.gen/sources_1/bd/add_dec4/sim/add_dec4.v" \


vlog -work xil_defaultlib \
"glbl.v"

