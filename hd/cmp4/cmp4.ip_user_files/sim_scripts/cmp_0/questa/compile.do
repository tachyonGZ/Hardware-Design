vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../cmp4.gen/sources_1/ip/cmp_0/src/cmp.v" \
"../../../../cmp4.gen/sources_1/ip/cmp_0/sim/cmp_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

