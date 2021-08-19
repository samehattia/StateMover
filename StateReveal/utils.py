#!/usr/bin/env python3

import re

# Constants
LOGIC_0 = r'\<const0>'
LOGIC_1 = r'\<const1>'

def propagate_input_signal_up(modules, netlist, added_lines, module, port_name, top_module_name='', top_signal_name=''):
	''' Propagate a signal named 'port_name' up in the module hierarchy starting from module 'module'  '''
	''' till a module named 'top_module_name' and then connects it to a signal named 'top_signal_name'.'''

	# Exit Condition: reached the top module
	if module.module_name == top_module_name:
		# Connect the added port in the top module to signal top_signal_name
		connect_signal_port(netlist, added_lines[-1], port_name, top_signal_name)
		return

	# Add an input port named port_name to this module
	add_input_port(modules, netlist, added_lines, module, port_name)

	# Add an input port named port_name to parent module
	for p_module_pair in get_parent_module(modules, module.module_name):
		propagate_input_signal_up(modules, netlist, added_lines, p_module_pair[0], port_name, top_module_name, top_signal_name)

def connect_signal_port(netlist, lineno, port_name, signal_name):

	if port_name in netlist[lineno-1]:
		netlist[lineno-1] = re.sub(r'\([^\(\)]+\)', '(%s )' % signal_name, netlist[lineno-1]) # r'\((.*?)\)'
	else:
		print('Error: line %d does not contain port %s' % (lineno, port_name))

def add_input_port(modules, netlist, added_lines, module, port_name):

	# Skip to the end of the port list which ends with ');'
	lineno = get_lineno(added_lines, module.line)
	while not (');' in netlist[lineno-1]):
		lineno += 1
	# Replace ');' with a comma
	netlist[lineno-1] = netlist[lineno-1].replace(');', ',')
	# Add a new port named port_name in the next line
	lineno += 1
	netlist.insert(lineno-1, '    %s);\n' % port_name)
	added_lines.append(lineno)
	# Add an output port definition named port_name in the next line
	lineno += 1
	netlist.insert(lineno-1, '  input %s;\n' % port_name)
	added_lines.append(lineno)

	# Add this port to the instantiation of this module in all parent modules
	for p_module_pair in get_parent_module(modules, module.module_name):
		p_module = p_module_pair[0]
		p_instance = p_module_pair[1]

		# Skip to the end of the intance port list which ends with ');'
		lineno = get_lineno(added_lines, p_instance.line)
		while not (');' in netlist[lineno-1]):
			lineno += 1
		# Replace ');' with a comma
		netlist[lineno-1] = netlist[lineno-1].replace(');', ',')
		# Add a new port named port_name in the next line
		lineno += 1
		netlist.insert(lineno-1, '        .%s(%s));\n' % (port_name, port_name))
		added_lines.append(lineno)

def add_generated_code(netlist, added_lines, module, added_code):

	# Add the formated code to the file. 
	# The code will be added before the first instance (after all signal definitions)
	# But make sure that there is no pragma directly before the first instance
	lineno = get_lineno(added_lines, module.module_instances[0].line)
	if '(*' in netlist[lineno-1-1]:
		print('Warning: A pragma is separated from its module @%d' % (lineno-1)) 

	# Insert the code into the netlist and update the added_line list
	for line in added_code:
		netlist.insert(lineno-1, line)
		added_lines.append(lineno)
		lineno += 1

def check_constant_signal(signal):

	if type(signal) is list:
		for s in signal:
			if s != LOGIC_0 and s != LOGIC_1:
				return False
		return True
	else:
		if signal != LOGIC_0 and signal != LOGIC_1:
			return False
		else:
			return True

def concat_signal_to_string(s_list):

	if type(s_list) is list:
		signal_str = '{'
		for var in s_list:
			if var[0] == '\\':
				signal_str += var + ' ' + ','
			else:
				signal_str += var + ','
		signal_str = signal_str.rstrip(',') + '}'
	else:
		signal_str = s_list

	return signal_str

def get_parent_module(modules, module_name):
	parent_modules = []
	for module in modules:
		for instance in module.module_instances:
			if instance.module_name == module_name:
				parent_modules.append((module, instance))

	return parent_modules

def get_lineno(added_lines, line):

	for a in added_lines:
		if a <= line:
			line += 1

	return line