
# Optional: "enable" allows running StateMover's CSR_SIM with StateLink
StateMover = enable

# StateMover directory (https://github.com/samehattia/StateMover)
STATEMOVER_DIR = ../..

# Modelsim include directory: ~/modelsim.xx.xx/modeltech/include
MODELSIM_BIN_DIR = $(shell dirname `which vsim`)
MODELSIM_INCLUDE_DIR = $(MODELSIM_BIN_DIR)/../include

# 32-bit GCC/G++ compilation flags
#CFLAGS = -c -g -I$(MODELSIM)/include -m32

# 32-bit G++ linking flags
#LFLAGS = -shared -Bsymbolic -m32

# 32-bit LD linking flags 
#LFLAGS = -shared -E -melf_i386

# 64-bit GCC/G++ compilation flags
CFLAGS = -c -g -I$(MODELSIM_INCLUDE_DIR) -fPIC -std=c++11

# 64-bit G++ linking flags
LFLAGS = -shared -Bsymbolic

ifeq ($(StateMover),enable)
	CSR_SIM_PATH = $(STATEMOVER_DIR)/CSR_SIM
	CSR_SIM_OBJECT_FILES = $(CSR_SIM_PATH)/csr_sim.o $(CSR_SIM_PATH)/state_element.o $(CSR_SIM_PATH)/state_access.o
	DEFINE_CSR_SIM = -DCSR_SIM
else
	CSR_SIM_OBJECT_FILES = 
	DEFINE_CSR_SIM = 
endif

all: $(CSR_SIM_OBJECT_FILES) axi_sniffer.cpp
	g++-5 $(CFLAGS) vlog_startup.cpp axi_sniffer.cpp axi_interface.cpp axis_sniffer.cpp axis_interface.cpp message.cpp utils.cpp $(DEFINE_CSR_SIM)
	g++-5 $(LFLAGS) -o StateLink.sl vlog_startup.o axi_sniffer.o axi_interface.o axis_sniffer.o axis_interface.o message.o utils.o $(CSR_SIM_OBJECT_FILES)

clean: 
	rm -rf StateLink.sl vlog_startup.o axi_sniffer.o axis_sniffer.o message.o



