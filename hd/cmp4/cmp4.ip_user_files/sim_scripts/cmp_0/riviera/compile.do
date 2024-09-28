transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../../cmp4.gen/sources_1/ip/cmp_0/src/cmp.v" \
"../../../../cmp4.gen/sources_1/ip/cmp_0/sim/cmp_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

