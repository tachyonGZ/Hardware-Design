transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../../demux4.gen/sources_1/bd/demux4/ipshared/89b8/src/demux2.v" \
"../../../../demux4.gen/sources_1/bd/demux4/ip/demux4_demux2_0_0/sim/demux4_demux2_0_0.v" \
"../../../../demux4.gen/sources_1/bd/demux4/ip/demux4_demux2_0_1/sim/demux4_demux2_0_1.v" \
"../../../../demux4.gen/sources_1/bd/demux4/ip/demux4_demux2_0_2/sim/demux4_demux2_0_2.v" \
"../../../../demux4.gen/sources_1/bd/demux4/sim/demux4.v" \


vlog -work xil_defaultlib \
"glbl.v"

