transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mux4  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mux4 xil_defaultlib.glbl

do {mux4.udo}

run 1000ns

endsim

quit -force
