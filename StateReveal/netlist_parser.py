#!/usr/bin/env python3

class ModuleClass:
	"""Defines a module"""
	"""Each module object has a name, lineno and a list of instance objects"""
	module_name = ''
	line = 0
	module_instances = []

	def __init__(self, name, s_line):
		self.module_name = name
		self.line = s_line
		self.module_instances = []

class InstanceClass:
	"""Define an instance"""
	"""Each instance object has a name, the name of instantiated module,"""
	"""lineno, a dictionary of parameters (parameter, [value, lineno]), """
	"""and a dictionary of ports (port, [connected signal, lineno]).    """
	"""A port signal can be a list of concatenated signals.            """
	instance_name = ''
	module_name = ''
	line = 0
	instance_paramters = {}
	instance_ports = {}

	def __init__(self, i_name, m_name, s_line):
		self.instance_name = i_name
		self.module_name = m_name
		self.line = s_line
		self.instance_paramters = {}
		self.instance_ports = {}

def create_task_module_list__ (modules, task_modules, task_module):

	task_modules.append(task_module)
	
	for instance in task_module.module_instances:
		for module in modules:
			if instance.module_name == module.module_name:
				task_modules = create_task_module_list__(modules, task_modules, module)
				break

	return task_modules

def create_task_module_list (modules, task_name):
	""" Create a list of modules that are part of the module named task_name """
	
	# If the task_name is not specified, return all the modules
	if task_name == '':
		return modules

	# Get the task module
	task_module = ''
	for module in modules:
		if module.module_name == task_name:
			task_module = module
			break

	# It the task_name is specified but not found, exit
	if task_module == '':
		print("Error: No module named " + task_name)
		exit()

	task_modules = []
	return create_task_module_list__(modules, task_modules, task_module)

def remove_unsupported_syntax (netlist_file_name, netlist_file_name_simple):
	""" Pyverilog does not currently support the dot operator in the module header """
	""" It also does not skip over encrypted modules """
	""" This function creates a simplifed netlist that does not contain these unsported syntax """
	""" The simplified netlist is only used for construsting the AST, the original netlist is used elsewhere """
	""" To be able to do that, this function must keep the line numbers of original and simplifed netlists the same (no added or removed lines) """

	in_module_header_flag = False

	# Read the netlist file
	with open(netlist_file_name, 'r') as netlist_file:
		with open(netlist_file_name_simple, 'w') as netlist_file_simple:

			# read line by line
			for line in netlist_file:

				if not in_module_header_flag:
					# Comment out protected modules
					if "`pragma protect begin_protected" in line:
						line = line.replace("`pragma", "/*`pragma")
					elif "`pragma protect end_protected" in line:
						line = line.replace("end_protected", "end_protected*/")
					
					netlist_file_simple.write(line)

					# Search for the start of a module header
					if line.startswith('module '):
						in_module_header_flag = True
				else:
					# Check for dot operators in module header
					if ' .' in line or '(.' in line:
						dot_loc = line.find('.')
						open_bracket_loc = line.find('(', dot_loc)
						close_bracket_loc = line.find(')', open_bracket_loc)

						global_port_name = line[dot_loc+1:open_bracket_loc]
						local_port_name = line[open_bracket_loc+1:close_bracket_loc]

						line = line.replace('.' + global_port_name + '(' + local_port_name + ')', global_port_name)

					netlist_file_simple.write(line)

					# Search for the end of a module header
					if ');' in line:
						in_module_header_flag = False

def parse_netlist (netlist_file):
	"""Our own parser. NOT completed"""
	line_no = 1
	modules = []

	# read line by line
	for line in netlist_file:
		# Search for a module. The first line of a module definition is "module module_name"
		if line.startswith('module '):
			words = line.split()
			module_name = words[1]
			line = line_no
			modules.append(ModuleClass(module_name, line))

		line_no = line_no + 1

	return modules

def parse_ast (ast):
	"""Pyverilog's AST parser"""
	# TODO: modules -> a dictionary of (module_name, module object)
	# TODO: module_instances -> a dictionary of (module_name, instance object)

	modules = []

	# Children of AST Description are ModuleDef, ...
	for m in ast.description.children():

		if m.__class__.__name__ == 'ModuleDef':
			module = ModuleClass(m.name, m.lineno)

			# Children of ModuleDef are ParamList, PortList, InstanceList, ...
			for l in m.children():

				if l.__class__.__name__ == 'InstanceList':

					# Children of InstanceList are Instance, ...
					for i in l.children():

						if i.__class__.__name__ == 'Instance':
							instance = InstanceClass(i.name, i.module, i.lineno)

							# Children of Instance are PortArg, ParamArg ...
							for p in i.children():

								if p.__class__.__name__ == 'ParamArg':
									if p.argname.__class__.__name__ == 'Identifier':
										instance.instance_paramters[p.paramname] = [str(p.argname), p.lineno]
									else:
										instance.instance_paramters[p.paramname] = [p.argname.value, p.lineno]

								elif p.__class__.__name__ == 'PortArg':

									# port argumnet can be a concatenation i.e. {,} in verilog 
									if p.argname.__class__.__name__ == 'Concat':
										#arg_list = [str(arg) for arg in p.argname.list]
										arg_list = []

										for arg in p.argname.list:
											if arg.__class__.__name__ == 'Identifier':
												arg_list.append(str(arg))
											elif arg.__class__.__name__ == 'Pointer':
												if str(arg.var)[0] == '\\':
													arg_list.append(str(arg.var)+' '+'['+str(arg.ptr)+']')
												else:
													arg_list.append(str(arg.var)+'['+str(arg.ptr)+']')
											elif arg.__class__.__name__ == 'Partselect':
												if str(arg.var)[0] == '\\':
													arg_list.append(str(arg.var)+' '+'['+str(arg.msb)+':'+str(arg.lsb)+']')
												else:
													arg_list.append(str(arg.var)+'['+str(arg.msb)+':'+str(arg.lsb)+']')

										instance.instance_ports[p.portname] = [arg_list, p.lineno]

									else:
										if p.argname.__class__.__name__ == 'Identifier':
											arg_name = str(p.argname)
										elif p.argname.__class__.__name__ == 'Pointer':
											if str(p.argname.var)[0] == '\\':
												arg_name = str(p.argname.var)+' '+'['+str(p.argname.ptr)+']'
											else:
												arg_name = str(p.argname.var)+'['+str(p.argname.ptr)+']'
										elif p.argname.__class__.__name__ == 'Partselect':
											if str(p.argname.var)[0] == '\\':
												arg_name = str(p.argname.var)+' '+'['+str(p.argname.msb)+':'+str(p.argname.lsb)+']'
											else:
												arg_name = str(p.argname.var)+'['+str(p.argname.msb)+':'+str(p.argname.lsb)+']'
										instance.instance_ports[p.portname] = [arg_name, p.lineno]

							module.module_instances.append(instance)

			modules.append(module)

	return modules
