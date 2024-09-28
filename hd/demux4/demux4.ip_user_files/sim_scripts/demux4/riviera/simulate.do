transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+demux4  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.demux4 xil_defaultlib.glbl

do {demux4.udo}

run 1000ns

endsim

quit -force
