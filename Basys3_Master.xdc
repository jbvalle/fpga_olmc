
## Switches
set_property PACKAGE_PIN V16 [get_ports {S[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]
set_property PACKAGE_PIN W16 [get_ports {S[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]
set_property PACKAGE_PIN R2 [get_ports {I}]
set_property IOSTANDARD LVCMOS33 [get_ports {I}]


## LEDs
set_property IOSTANDARD LVCMOS33 [get_ports Y]
set_property PACKAGE_PIN E19 [get_ports {Y}]


##Buttons
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property PACKAGE_PIN T18 [get_ports CLK]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK_IBUF] 
