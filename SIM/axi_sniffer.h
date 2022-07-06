#ifndef AXI_SNIFFER_H
#define AXI_SNIFFER_H

#define PARAM_FILE_NAME "param.txt"

// Define AXI_SNIFFER if you want to use the AXI sniffer
#define AXI_SNIFFER

#define AXI_SIM_TO_HW_PIPENAME "/tmp/axi_sim_to_hw_pipe"
#define AXI_HW_TO_SIM_PIPENAME "/tmp/axi_hw_to_sim_pipe"

#define JTAG_AXI_WIDTH 64

// Generator mode in which the write and read responses are fully generated from the C++ side
const bool axi_generator_mode = true;

// Timestamp mode in which the the AXI write and read responses from hardware are timestamped
const bool axi_timestamp_mode = true;

#endif
