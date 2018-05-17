
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

all: cssim.cpp
	g++ $(CFLAGS) cssim.cpp
	g++ $(LFLAGS) -o cssim.sl cssim.o  

clean: 
	rm -rf cssim.sl cssim.o 



