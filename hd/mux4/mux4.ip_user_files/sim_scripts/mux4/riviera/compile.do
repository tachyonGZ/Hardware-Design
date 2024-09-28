transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../../mux4.gen/sources_1/bd/mux4/ipshared/b12d/src/mux2.v" \
"../../../../mux4.gen/sources_1/bd/mux4/ip/mux4_mux2_0_0/sim/mux4_mux2_0_0.v" \
"../../../../mux4.gen/sources_1/bd/mux4/ip/mux4_mux2_0_1/sim/mux4_mux2_0_1.v" \
"../../../../mux4.gen/sources_1/bd/mux4/ip/mux4_mux2_0_2/sim/mux4_mux2_0_2.v" \
"../../../../mux4.gen/sources_1/bd/mux4/sim/mux4.v" \


vlog -work xil_defaultlib \
"glbl.v"

