#ifndef CSR_SIM_H
#define CSR_SIM_H

#define PARAM_FILE_NAME "param.txt"
#define DUMP_IN_FILE_NAME "hw_state.dump"
#define DUMP_OUT_FILE_NAME "sim_state.dump"

// Define VERBOSE to print more information on module state elements
// #define VERBOSE

// Define CORRUPT_STATE if you want to corrupt the module state immediately after saving it
// #define CORRUPT_STATE

// Define RESTORE_INIT_STATE if you want to restore the initial module state immediately after saving the module state
// #define RESTORE_INIT_STATE

// Define HARDWARE if you want to dump and restore hardware state
#define HARDWARE
// Define BRAM_REGISTERS and DSP_REGISTERS if you want to dump and restore BRAM/DSP internal state
#define BRAM_REGISTERS
#define DSP_REGISTERS

// Module name
extern std::string module_name;

#endif
