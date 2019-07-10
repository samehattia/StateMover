Context Saving and Restoring Simulator

1) Given verilog design files, a verilog testbench, and the name of the module to be swapped.
2) Search for this module in the design.
3) Traverse the design down starting from this module.
4) Create a datastructure representing all the registers in this module and all underlaying modules.
4) Once a SAVE signal is asserted, the registers values will be saved in the created datastructure.
5) Then, these registers are corrupted (X or random values), and simulation continues until a RESTORE signal is asserted.
6) Once a RESTORE signal is asserted, the saved values are restored to the registers.

Instead of using SAVE and RESTORE signals, timing events can be used (i.e. after a specific simulation time)
