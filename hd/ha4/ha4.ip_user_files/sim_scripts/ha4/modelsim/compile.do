vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../ha4.gen/sources_1/bd/ha4/ipshared/1a7d/src/fa1.v" \
"../../../../ha4.gen/sources_1/bd/ha4/ip/ha4_fa1_0_0/sim/ha4_fa1_0_0.v" \
"../../../../ha4.gen/sources_1/bd/ha4/ipshared/b046/src/ha1.v" \
"../../../../ha4.gen/sources_1/bd/ha4/ip/ha4_ha1_0_0/sim/ha4_ha1_0_0.v" \
"../../../../ha4.gen/sources_1/bd/ha4/ip/ha4_fa1_0_1/sim/ha4_fa1_0_1.v" \
"../../../../ha4.gen/sources_1/bd/ha4/ip/ha4_fa1_0_2/sim/ha4_fa1_0_2.v" \
"../../../../ha4.gen/sources_1/bd/ha4/sim/ha4.v" \


vlog -work xil_defaultlib \
"glbl.v"

