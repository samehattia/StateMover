
# StateMover Path
StateMover_PATH = ~/StateMover

# StateLink path
StateLink_PATH = $(StateMover_PATH)/StateLink/SIM

# Vivado Installation Path
VIVADO_PATH = ~/Xilinx/Vivado/2018.3

VSIM_FLAGS = -pli $(StateLink_PATH)/StateLink.sl -t ps -voptargs=+acc +notimingchecks 
VSIM_LFLAGS= -L xpm -L xbip_utils_v3_0_9 -L xbip_pipe_v3_0_5 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L axi_lite_ipif_v3_0_4 -L tri_mode_ethernet_mac_v9_0_13 -L gig_ethernet_pcs_pma_v16_1_5 -L xlconstant_v1_1_5 -L c_reg_fd_v12_0_5 -L c_mux_bit_v12_0_5 -L c_shift_ram_v12_0_12 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_5 -L xbip_addsub_v3_0_5 -L c_addsub_v12_0_12 -L c_gate_bit_v12_0_5 -L xbip_counter_v3_0_5 -L c_counter_binary_v12_0_12 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip

all: compile run_gui

run:
	vsim -do "radix hex; force sys_tb.breakpoint FFFFFFFF; force sys_tb.clk_en 1; run 2us" -c sys_tb work.glbl $(VSIM_FLAGS) $(VSIM_LFLAGS)

run_gui:
	vsim -do "radix hex; force sys_tb.breakpoint FFFFFFFF; force sys_tb.clk_en 1; add wave /sys_tb/uut/memcached_i/DUT/*; run 2us" sys_tb work.glbl $(VSIM_FLAGS) $(VSIM_LFLAGS)

compile_statelink: clean
	vlib work

	vlog $(VIVADO_PATH)/data/verilog/src/glbl.v

	# Implementation Netlist (we need memcached server (DUT_imp_1OCIMA7) from here)
	vlog ./memcached_impl/memcached_impl_netlist.v

	# Block Design Top
	vlog memcached_statelink_statereveal.v

	# Top Module 
	vlog $(StateMover_PATH)/IPs/IL/ti_controller.v
	vlog $(StateMover_PATH)/IPs/IL/interruption_logic_v6.v
	vlog top_statereveal.v
	
	# Test Bench
	vlog sys_tb_statelink.v

hardware_create_project:
	vivado -mode tcl -source vivado_create_project.tcl -nolog -nojournal

hardware_implement: 
	vivado -mode tcl -source vivado_implement.tcl -nolog -nojournal

# For StateReveal
hardware_syn: 
	vivado -mode tcl -source vivado_syn.tcl -nolog -nojournal

StateReveal:
	cd ./memcached_syn/; StateReveal.py memcached_syn_netlist.v DUT_imp_1OCIMA7 > StateReveal_report; cd ..

hardware_impl: 
	vivado -mode tcl -source vivado_impl.tcl -nolog -nojournal

clean:
	rm -rf work
	rm -f transcript
	rm -f vsim.wlf
