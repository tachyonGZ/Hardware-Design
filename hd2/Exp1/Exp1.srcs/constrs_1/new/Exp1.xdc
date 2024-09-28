set_property PACKAGE_PIN P16 [get_ports {seg[0]}]
set_property PACKAGE_PIN P17 [get_ports {seg[1]}]
set_property PACKAGE_PIN N17 [get_ports {seg[2]}]
set_property PACKAGE_PIN N15 [get_ports {seg[3]}]
set_property PACKAGE_PIN M15 [get_ports {seg[4]}]
set_property PACKAGE_PIN L17 [get_ports {seg[5]}]
set_property PACKAGE_PIN L18 [get_ports {seg[6]}]
set_property PACKAGE_PIN K19 [get_ports {seg[7]}]
set_property PACKAGE_PIN L22 [get_ports {sel[0]}]
set_property PACKAGE_PIN P21 [get_ports {sel[1]}]
set_property PACKAGE_PIN N20 [get_ports {sel[2]}]
set_property PACKAGE_PIN Y8 [get_ports clk]

set_property IOSTANDARD LVCMOS15 [get_ports {seg[7]}]
set_property IOSTANDARD LVCMOS15 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS15 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS15 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS15 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {sel[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {sel[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {sel[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports clk]

set_property DRIVE 12 [get_ports {sel[2]}]
set_property DRIVE 12 [get_ports {sel[1]}]
set_property DRIVE 12 [get_ports {sel[0]}]


set_property SLEW SLOW [get_ports {seg[7]}]
set_property SLEW SLOW [get_ports {seg[6]}]
set_property SLEW SLOW [get_ports {seg[5]}]
set_property SLEW SLOW [get_ports {seg[4]}]
set_property SLEW SLOW [get_ports {seg[3]}]
set_property SLEW SLOW [get_ports {seg[2]}]
set_property SLEW SLOW [get_ports {seg[1]}]
set_property SLEW SLOW [get_ports {seg[0]}]
set_property SLEW SLOW [get_ports {sel[2]}]
set_property SLEW SLOW [get_ports {sel[1]}]
set_property SLEW SLOW [get_ports {sel[0]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk}]