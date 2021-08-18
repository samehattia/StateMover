
# Modelsim installation path
MODELSIM = /home/sameh/modelsim.10.5c/modeltech

# 32-bit GCC/G++ compilation flags
#CFLAGS = -c -g -I$(MODELSIM)/include -m32

# 32-bit G++ linking flags
#LFLAGS = -shared -Bsymbolic -m32

# 32-bit LD linking flags 
#LFLAGS = -shared -E -melf_i386

# 64-bit GCC/G++ compilation flags
CFLAGS = -c -g -I$(MODELSIM)/include -fPIC

# 64-bit G++ linking flags
LFLAGS = -shared -Bsymbolic

all: csr_sim.cpp
	g++ $(CFLAGS) vlog_startup.cpp csr_sim.cpp state_element.cpp state_access.cpp
	g++ $(LFLAGS) -o csr_sim.sl vlog_startup.o csr_sim.o state_element.o state_access.o

clean: 
	rm -rf csr_sim.sl vlog_startup.o csr_sim.o state_element.o state_access.o



