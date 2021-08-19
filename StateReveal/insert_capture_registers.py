#!/usr/bin/env python3

import sys

import netlist_parser
import bram_capture
import dsp_capture

# https://github.com/PyHDI/Pyverilog
from pyverilog.vparser.parser import parse

# First argument: structural Netlist
if len(sys.argv) == 2:
	netlist_file_name = sys.argv[1]
	top_name = 'top'
	task_name = ''
elif len(sys.argv) == 3:
	netlist_file_name = sys.argv[1]
	top_name = 'top'
	task_name = sys.argv[2]
else:
	print("Expects at least one argument: Structural Netlist")
	exit()

# Create a simplified netlist that does not contain syntax not supported by the Pyverilog parser
netlist_file_name_simple = netlist_file_name + '.1'
netlist_parser.remove_unsupported_syntax(netlist_file_name, netlist_file_name_simple)

# Use Pyverilog parser to parse the structural netlist
ast, directives = parse([netlist_file_name_simple])

# Parse the AST returned from Pyverilog
modules = netlist_parser.parse_ast(ast)
print('Number of modules: %d' % len(modules))

# Create a subset list of modules inside the task
task_modules = netlist_parser.create_task_module_list(modules, task_name)
print('Number of task modules: %d' % len(task_modules))

# Read the netlist file
with open(netlist_file_name, 'r') as netlist_file:
	netlist_lines = netlist_file.readlines()

added_lines = []
# Add capture registers for BRAMs
bram_capture.insert_bram_capture_registers(modules, netlist_lines, added_lines, top_name, task_modules)

# Add capture registers for DSPs
dsp_capture.insert_dsp_capture_registers(modules, netlist_lines, added_lines, top_name, task_modules)

# Write the new netlist
with open(netlist_file_name.rstrip('.v') + '_new.v', 'w') as netlist_new_file:
	netlist_new_file.writelines(netlist_lines)
