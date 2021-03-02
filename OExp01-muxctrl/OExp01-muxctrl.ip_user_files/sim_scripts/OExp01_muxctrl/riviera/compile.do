vlib work
vlib riviera

vlib riviera/xlslice_v1_0_1
vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_1
vlib riviera/xlconstant_v1_1_3

vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../OExp01-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_0_0/sim/OExp01_muxctrl_xlslice_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_0_3/sim/OExp01_muxctrl_xlslice_0_3.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../OExp01-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconcat_0_0/sim/OExp01_muxctrl_xlconcat_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconcat_0_1/sim/OExp01_muxctrl_xlconcat_0_1.v" \

vlog -work xlconstant_v1_1_3  -v2k5 \
"../../../../OExp01-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_0/sim/OExp01_muxctrl_xlconstant_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_1/sim/OExp01_muxctrl_xlconstant_0_1.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_2/sim/OExp01_muxctrl_xlconstant_0_2.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_3/sim/OExp01_muxctrl_xlconstant_0_3.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_2_0/sim/OExp01_muxctrl_xlslice_2_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_2_1/sim/OExp01_muxctrl_xlslice_2_1.v" \
"../../../bd/OExp01_muxctrl/sim/OExp01_muxctrl.v" \

vlog -work xil_defaultlib \
"glbl.v"
