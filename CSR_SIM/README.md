# Context Saving and Restoring Simulator

* To compile CSR_SIM, just type `make`; the Makefile expects that Modelsim is installed on your machine, and Modelsim bin directory is added to the PATH environemnt variable.

* The make file generates a shared library `csr_sim.sl` which should be passed to Modelsim when running a simulation.

* Here is an example for a Makefile for running a simulation:

```makefile
# CSR_SIM path
CSR_SIM_PATH = /path/to/CSR_SIM

# Modelsim Flags
VSIM_FLAGS = -pli $(CSR_SIM_PATH)/csr_sim.sl -t ps -voptargs=+acc +notimingchecks

# linking with Xilinx precompiled libraries for performing a netlist simulation
VSIM_LFLAGS = -L unisims_ver -L unisim -L unimacro_ver -L secureip -L xpm

all: compile run

run:
	vsim -do "run -all ;quit -force" -c sys_tb work.glbl $(VSIM_FLAGS) $(VSIM_LFLAGS)
	
compile: clean
	vlib work

	vlog /path/to/Vivado/2018.3/data/verilog/src/glbl.v
	
	vlog top_impl_netlist.v

	vlog sys_tb.v
```

* CSR-SIM expects a `param.txt` file that contains DUT name and save/restore signal names. 

* Here is an example for a `param.txt` file:
```
sys_tb.top_instance.DUT
sys_tb.save
sys_tb.restore
```
