transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+add_dec4  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.add_dec4 xil_defaultlib.glbl

do {add_dec4.udo}

run 1000ns

endsim

quit -force
