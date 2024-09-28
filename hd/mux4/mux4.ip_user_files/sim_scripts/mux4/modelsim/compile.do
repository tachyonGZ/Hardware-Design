vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../mux4.gen/sources_1/bd/mux4/ipshared/b12d/src/mux2.v" \
"../../../../mux4.gen/sources_1/bd/mux4/ip/mux4_mux2_0_0/sim/mux4_mux2_0_0.v" \
"../../../../mux4.gen/sources_1/bd/mux4/ip/mux4_mux2_0_1/sim/mux4_mux2_0_1.v" \
"../../../../mux4.gen/sources_1/bd/mux4/ip/mux4_mux2_0_2/sim/mux4_mux2_0_2.v" \
"../../../../mux4.gen/sources_1/bd/mux4/sim/mux4.v" \


vlog -work xil_defaultlib \
"glbl.v"

