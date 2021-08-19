#!/usr/bin/env python3

from utils import *

def insert_bram_capture_registers(modules, netlist, added_lines, top_name, task_modules):

	bram_id = 0
	# Search for modules that contain BRAMs
	for module in modules:
		# Check if the module is part of the task
		if not module in task_modules:
			continue
			
		for instance in module.module_instances:
			if instance.module_name == 'RAMB36E2' or instance.module_name == 'RAMB18E2':
				# instance = a BRAM instance, module = a module in which the BRAM is instantiated
				print('FOUND a BRAM @%d:' % instance.line)
				print('\tModule: %s' % module.module_name)
				print('\tInstance: %s' % instance.instance_name)
				print('\tType: %s' % instance.module_name)

				# Remove escaped characters from instance name
				instance_name = instance.instance_name.replace('\\', '')
				instance_name = instance_name.replace('.', '')
				instance_name = instance_name.replace('^', '')

				# The code to be added needs to know the following bram parameters: DOA_REG, DOB_REG, READ_WIDTH_A, READ_WIDTH_B
				outa_registered = int(instance.instance_paramters['DOA_REG'][0])
				outb_registered = int(instance.instance_paramters['DOB_REG'][0])
				outa_width = int(instance.instance_paramters['READ_WIDTH_A'][0])
				outb_width = int(instance.instance_paramters['READ_WIDTH_B'][0])
				ina_width = int(instance.instance_paramters['WRITE_WIDTH_A'][0])
				inb_width = int(instance.instance_paramters['WRITE_WIDTH_B'][0])

				# Check if DOUTADOUT and DOUTBDOUT ports exist
				if not ('DOUTBDOUT' in instance.instance_ports):
					outb_registered = 0
				if not ('DOUTADOUT' in instance.instance_ports):
					outa_registered = 0

				# Check if the BRAM is used as SDP
				# When RAMB36E2 used as SDP, either the read or write port is a fixed width of x64 or x72
				# When RAMB18E2 used as SDP, either the read or write port is a fixed width of x32 or x36
				if outa_width >= 64 or outb_width >= 64 or ina_width >= 64 or inb_width >= 64:
					print('\tSDP mode')
					SDP = True
				elif instance.module_name == 'RAMB18E2' and (outa_width >= 32 or outb_width >= 32 or ina_width >= 32 or inb_width >= 32):
					print('\tSDP mode')
					SDP = True
				else:
					SDP = False

				# Check if the BRAM is used as SP (only one port is used)
				if (outa_width == 0 and ina_width == 0) or (outb_width == 0 and inb_width == 0):
					print('\tSP mode')
					SP = True
				else:
					SP = False

				if not SP and not SDP:
					print('\tTDP mode')

				# Check if the BRAM is used as a ROM
				wea = instance.instance_ports['WEA'][0]
				web = instance.instance_ports['WEBWE'][0]
				if (outa_width == 0 and outb_width == 0) or ((type(wea) is list and wea[0] == LOGIC_0 and all(wea)) and (type(web) is list and web[0] == LOGIC_0 and all(web))):
					print('\tROM')
					ROM = True
				else:
					ROM = False

				# Check if BRAM is used in register mode
				if not outb_registered and not outa_registered:
					# TODO: disable writing when BRAMs in register and latch mode co-exist
					print('\tLatched output')
					continue

				# Check if both DOUTADOUT and DOUTBDOUT are registered (SDP mode)
				if outa_registered and outb_registered and SDP:
					print('\tRegistered A&B output')

					# The code to be added needs to know the following BRAM ports: CLKARDCLK, CLKBWRCLK, RSTREGARSTREG, RSTREGB, DOUTADOUT, DOUTBDOUT, ENARDEN
					# When used as SDP, CLKARDCLK is the read clk
					clk = instance.instance_ports['CLKARDCLK'][0]
					rst = instance.instance_ports['RSTREGARSTREG'][0]
					outa = instance.instance_ports['DOUTADOUT'][0]
					outb = instance.instance_ports['DOUTBDOUT'][0]
					ena = instance.instance_ports['ENBWREN'][0]

					# Calculate actual output port width
					if outa_width == 9:
						outa_width = 8
					elif outa_width == 18:
						outa_width = 16
					elif outa_width == 36:
						outa_width = 32
					elif outa_width == 72:
						outa_width = 64

					# Generate the added code for capture registers
					added_code = generate_bram_capture_rtl_code(instance_name, clk, rst, '{%s , %s}' % (concat_signal_to_string(outb), concat_signal_to_string(outa)), outa_width, ena, 1, bram_id, ROM)

					# Add the generated code to the file. 
					add_generated_code(netlist, added_lines, module, added_code)

					# Rename the signal connected to DOUTADOUT to [instance_name]_out[outa_width/2-1:0]
					lineno = get_lineno(added_lines, instance.instance_ports['DOUTADOUT'][1])
					connect_signal_port(netlist, lineno, 'DOUTADOUT', '%s_out[%d-1:0]' % (instance_name, outa_width/2))

					# Rename the signal connected to DOUTBDOUT to [instance_name]_out[outa_width-1:outa_width/2]
					lineno = get_lineno(added_lines, instance.instance_ports['DOUTBDOUT'][1])
					connect_signal_port(netlist, lineno, 'DOUTBDOUT', '%s_out[%d-1:%d]' % (instance_name, outa_width, outa_width/2))

					if not ROM:
						# Rename the signal connected to ENBWREN to [instance_name]_we
						lineno = get_lineno(added_lines, instance.instance_ports['ENBWREN'][1])
						connect_signal_port(netlist, lineno, 'ENBWREN', '%s_we' % instance_name)

						# Propagate signal [instance_name]_write_disable up to the top module and connect it to signal break
						propagate_input_signal_up(modules, netlist, added_lines, module, '%s_write_disable_%d' % (instance_name, bram_id), top_name, 'break')

				# Check if DOUTBDOUT is registered
				elif outb_registered and not outa_registered and not SDP:
					print('\tRegistered B output')

					# The code to be added needs to know the following BRAM ports: CLKARDCLK, CLKBWRCLK, RSTREGARSTREG, RSTREGB, DOUTADOUT, DOUTBDOUT, ENARDEN
					clk = instance.instance_ports['CLKBWRCLK'][0]
					rst = instance.instance_ports['RSTREGB'][0]
					out = instance.instance_ports['DOUTBDOUT'][0]
					ena = instance.instance_ports['ENARDEN'][0]
					
					# Calculate actual output port width
					if outb_width == 9:
						outb_width = 8
					elif outb_width == 18:
						outb_width = 16
					elif outb_width == 36:
						outb_width = 32

					# Generate the added code for capture registers
					added_code = generate_bram_capture_rtl_code(instance_name, clk, rst, out, outb_width, ena, 1, bram_id, ROM)

					# Add the generated code to the file. 
					add_generated_code(netlist, added_lines, module, added_code)

					# Rename the signal connected to DOUTBDOUT to [instance_name]_out
					lineno = get_lineno(added_lines, instance.instance_ports['DOUTBDOUT'][1])
					connect_signal_port(netlist, lineno, 'DOUTBDOUT', '%s_out' % instance_name)

					if not ROM:
						# Rename the signal connected to ENARDEN to [instance_name]_we
						lineno = get_lineno(added_lines, instance.instance_ports['ENARDEN'][1])
						connect_signal_port(netlist, lineno, 'ENARDEN', '%s_we' % instance_name)

						# Propagate signal [instance_name]_write_disable up to the top module and connect it to signal break
						propagate_input_signal_up(modules, netlist, added_lines, module, '%s_write_disable_%d' % (instance_name, bram_id), top_name, 'break')

				# Check if DOUTADOUT is registered
				elif outa_registered and not outb_registered and not SDP:
					print('\tRegistered A output')

					# The code to be added needs to know the following BRAM ports: CLKARDCLK, CLKBWRCLK, RSTREGARSTREG, RSTREGB, DOUTADOUT, DOUTBDOUT, ENARDEN
					clk = instance.instance_ports['CLKARDCLK'][0]
					rst = instance.instance_ports['RSTREGARSTREG'][0]
					out = instance.instance_ports['DOUTADOUT'][0]
					wea = instance.instance_ports['WEA'][0]
					
					# Calculate actual output port width
					if outa_width == 9:
						outa_width = 8
					elif outa_width == 18:
						outa_width = 16
					elif outa_width == 36:
						outa_width = 32

					if ina_width == 9:
						wea_width = 1
					elif ina_width == 18:
						wea_width = 2
					elif ina_width == 36:
						wea_width = 4

					# Generate the added code for capture registers
					added_code = generate_bram_capture_rtl_code(instance_name, clk, rst, out, outa_width, wea, wea_width, bram_id, ROM)

					# Add the generated code to the file. 
					add_generated_code(netlist, added_lines, module, added_code)

					# Rename the signal connected to DOUTADOUT to [instance_name]_out
					lineno = get_lineno(added_lines, instance.instance_ports['DOUTADOUT'][1])
					connect_signal_port(netlist, lineno, 'DOUTADOUT', '%s_out' % instance_name)

					if not ROM:
						# Rename the signal connected to WEA to [instance_name]_we
						lineno = get_lineno(added_lines, instance.instance_ports['WEA'][1])
						connect_signal_port(netlist, lineno, 'WEA', '%s_we' % instance_name)

						# Propagate signal [instance_name]_write_disable up to the top module and connect it to signal break
						propagate_input_signal_up(modules, netlist, added_lines, module, '%s_write_disable_%d' % (instance_name, bram_id), top_name, 'break')

				elif outa_registered and outb_registered and not SDP:
					print('\tRregistered A&B output')

					if not ROM:
						print('\tWarning: BRAMs with registered A&B output that are not used as ROMs are not supported')

					# The code to be added needs to know the following BRAM ports: CLKARDCLK, CLKBWRCLK, RSTREGARSTREG, RSTREGB, DOUTADOUT, DOUTBDOUT, ENARDEN
					clk = instance.instance_ports['CLKARDCLK'][0]
					rst = instance.instance_ports['RSTREGARSTREG'][0]
					outa = instance.instance_ports['DOUTADOUT'][0]
					outb = instance.instance_ports['DOUTBDOUT'][0]
					ena = instance.instance_ports['ENARDEN'][0]
					
					# Calculate actual output port width
					if outa_width == 9:
						outa_width = 8
						outpa_width = 1
					elif outa_width == 18:
						outa_width = 16
						outpa_width = 1 ##2
					elif outa_width == 36:
						outa_width = 32
						outpa_width = 4

					if outb_width == 9:
						outb_width = 8
						outpb_width = 1
					elif outb_width == 18:
						outb_width = 16
						outpb_width = 1 ##2
					elif outb_width == 36:
						outb_width = 32
						outpb_width = 4

					if 'DOUTPADOUTP' in instance.instance_ports and 'DOUTPBDOUTP' in instance.instance_ports:
						outpa = instance.instance_ports['DOUTPADOUTP'][0]
						outpb = instance.instance_ports['DOUTPBDOUTP'][0]
						out = '{%s, %s, %s , %s}' % (outpb, outpa, outb, outa)
					elif 'DOUTPADOUTP' in instance.instance_ports:
						outpa = instance.instance_ports['DOUTPADOUTP'][0]
						out = '{%s, %s , %s}' % (outpa, outb, outa)
						outpb_width = 0
					elif 'DOUTPBDOUTP' in instance.instance_ports:
						outpb = instance.instance_ports['DOUTPBDOUTP'][0]
						out = '{%s, %s , %s}' % (outpb, outb, outa)
						outpa_width = 0
					else:
						out = '{%s , %s}' % (concat_signal_to_string(outb), concat_signal_to_string(outa))
						outpa_width = 0
						outpb_width = 0

					out_width = outpb_width + outpa_width + outb_width + outa_width

					# Generate the added code for capture registers
					added_code = generate_bram_capture_rtl_code(instance_name, clk, rst, out, out_width, ena, 1, bram_id, ROM)

					# Add the generated code to the file. 
					add_generated_code(netlist, added_lines, module, added_code)

					# Rename the signal connected to DOUTADOUT to [instance_name]_out[outa_width/2-1:0]
					lineno = get_lineno(added_lines, instance.instance_ports['DOUTADOUT'][1])
					connect_signal_port(netlist, lineno, 'DOUTADOUT', '%s_out[%d-1:0]' % (instance_name, outa_width))

					# Rename the signal connected to DOUTBDOUT to [instance_name]_out[outa_width-1:outa_width/2]
					lineno = get_lineno(added_lines, instance.instance_ports['DOUTBDOUT'][1])
					connect_signal_port(netlist, lineno, 'DOUTBDOUT', '%s_out[%d-1:%d]' % (instance_name, outa_width + outb_width, outa_width))

					if 'DOUTPADOUTP' in instance.instance_ports:
						# Rename the signal connected to DOUTPADOUTP to [instance_name]_out[]
						lineno = get_lineno(added_lines, instance.instance_ports['DOUTPADOUTP'][1])
						connect_signal_port(netlist, lineno, 'DOUTPADOUTP', '%s_out[%d-1:%d]' % (instance_name, outa_width + outb_width + outpa_width, outa_width + outb_width))

					if 'DOUTPBDOUTP' in instance.instance_ports:
						# Rename the signal connected to DOUTPBDOUTP to [instance_name]_out[]
						lineno = get_lineno(added_lines, instance.instance_ports['DOUTPBDOUTP'][1])
						connect_signal_port(netlist, lineno, 'DOUTPBDOUTP', '%s_out[%d-1:%d]' % (instance_name, outa_width + outb_width + outpa_width + outpb_width, outa_width + outb_width + outpa_width))

				# Check if the parity output port is used or not
				if not (outa_registered and outb_registered and not SDP) and ('DOUTPADOUTP' in instance.instance_ports or 'DOUTPBDOUTP' in instance.instance_ports):
					print('\tWarning: This BRAM has DOUTPADOUTP/DOUTPBDOUTP output')

				# Increment the bram_id. It is used to uniquely identify signals that propagates out of the module (*_write_disable)
				bram_id += 1

def generate_bram_capture_rtl_code(bram_name, bram_clk, bram_rst, bram_out, bram_out_width, bram_we, bram_we_width, bram_id, ROM=False):
	'''This function assumes that DOUTBDOUT will be connected to a signal named [instance_name]_out (originally connected to bram_out)'''
	'''This function assumes that ENARDEN/WEA/WEBEA will be connected to a signal named [instance_name]_we (originally connected to bram_we)'''
	'''This function assumes that a signal named [instance_name]_write_disable will be propagated to the top module and connected to signal break'''

	added_code = []

	# Code for capture registers
	added_code.append('/* BRAM Internal Register Capture - Output Capture */\n')
	added_code.append('/* Replay Registers */\n')
	added_code.append('wire [%d-1:0] %s_out ;\n' % (bram_out_width, bram_name))
	added_code.append('(* dont_touch = "true" *) reg replay_flag_2_1_%d = 0;\n' % bram_id)
	added_code.append('(* dont_touch = "true" *) reg replay_flag_2_2_%d = 0;\n' % bram_id)
	added_code.append('reg [%d-1:0] replay_reg_2_1_%d = 0;\n' % (bram_out_width, bram_id))
	added_code.append('reg [%d-1:0] replay_reg_2_2_%d = 0;\n' % (bram_out_width, bram_id))
	added_code.append('always @(posedge %s )\n' % bram_clk)
	added_code.append('begin\n')
	added_code.append('  if (%s )\n' % bram_rst)
	added_code.append('  begin\n')
	added_code.append('    replay_flag_2_1_%d = 0;\n' % bram_id)
	added_code.append('    replay_flag_2_2_%d = 0;\n' % bram_id)
	added_code.append('    replay_reg_2_1_%d = 0;\n' % bram_id)
	added_code.append('    replay_reg_2_2_%d = 0;\n' % bram_id)
	added_code.append('  end\n')
	added_code.append('  else\n')
	added_code.append('  begin\n')
	added_code.append('    replay_reg_2_1_%d <= %s_out ;\n' % (bram_id, bram_name))
	added_code.append('    replay_reg_2_2_%d <= replay_reg_2_1_%d;\n' % (bram_id, bram_id))
	added_code.append('    if (replay_flag_2_1_%d)\n' % bram_id)
	added_code.append('      replay_flag_2_1_%d <= 0;\n' % bram_id)
	added_code.append('    replay_flag_2_2_%d <= replay_flag_2_1_%d;\n' % (bram_id, bram_id))
	added_code.append('  end\n')
	added_code.append('end\n')
	added_code.append('assign %s = replay_flag_2_2_%d ? replay_reg_2_2_%d : %s_out ;\n' % (concat_signal_to_string(bram_out), bram_id, bram_id, bram_name))
	added_code.append('\n')

	# Code for ANDing bram write enable with [instance_name]_write_disable (break) signal
	if not ROM:
		added_code.append('wire [%d-1:0] %s_we ;\n' % (bram_we_width, bram_name))
		added_code.append('assign %s_we = %s & {%d{~%s_write_disable_%d }} ;\n' % (bram_name, concat_signal_to_string(bram_we), bram_we_width, bram_name, bram_id))
	
	added_code.append('/* BRAM Internal Register Capture - Output Capture */\n')
	added_code.append('\n')

	return added_code