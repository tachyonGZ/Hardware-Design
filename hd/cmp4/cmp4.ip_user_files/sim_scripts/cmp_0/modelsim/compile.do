vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../cmp4.gen/sources_1/ip/cmp_0/src/cmp.v" \
"../../../../cmp4.gen/sources_1/ip/cmp_0/sim/cmp_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

