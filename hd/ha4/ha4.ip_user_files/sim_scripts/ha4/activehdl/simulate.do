transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ha4  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ha4 xil_defaultlib.glbl

do {ha4.udo}

run 1000ns

endsim

quit -force
