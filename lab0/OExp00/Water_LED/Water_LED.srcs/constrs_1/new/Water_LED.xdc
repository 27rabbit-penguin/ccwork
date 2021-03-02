
#系统时钟
set_property IOSTANDARD LVCMOS18  [get_ports  CLK_i]
set_property PACKAGE_PIN AC18     [get_ports  CLK_i]
#系统复位
set_property IOSTANDARD LVCMOS18  [get_ports  RSTn_i]
set_property PACKAGE_PIN W13      [get_ports  RSTn_i]
#LED并行接口
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[0]}]
set_property PACKAGE_PIN AB26    [get_ports {LED_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[1]}]
set_property PACKAGE_PIN W24     [get_ports {LED_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[2]}]
set_property PACKAGE_PIN W23     [get_ports {LED_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[3]}]
set_property PACKAGE_PIN AB25    [get_ports {LED_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[4]}] 			
set_property PACKAGE_PIN AA25    [get_ports {LED_o[4]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[5]}] 			
set_property PACKAGE_PIN W21     [get_ports {LED_o[5]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[6]}] 			
set_property PACKAGE_PIN V21     [get_ports {LED_o[6]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED_o[7]}] 			
set_property PACKAGE_PIN W26     [get_ports {LED_o[7]}] 