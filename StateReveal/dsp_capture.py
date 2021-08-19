#!/usr/bin/env python3

from utils import *

def insert_dsp_capture_registers(modules, netlist, added_lines, top_name, task_modules):

	dsp_id = 0
	# Search for modules that contain DSPs
	for module in modules:
		# Check if the module is part of the task
		if not module in task_modules:
			continue

		for instance in module.module_instances:
			if instance.module_name == 'DSP48E2':
				# instance = a DSP instance, module = a module in which the DSP is instantiated
				print('FOUND a DSP @%d:' % instance.line)
				print('\tModule: %s' % module.module_name)
				print('\tInstance: %s' % instance.instance_name)


				# The code to be added needs to know the following DSP parameters: AREG, BREG, CREG, DREG, MREG, PREG, OPMODEREG
				a_registered = int(instance.instance_paramters['AREG'][0])
				b_registered = int(instance.instance_paramters['BREG'][0])
				c_registered = int(instance.instance_paramters['CREG'][0])
				d_registered = int(instance.instance_paramters['DREG'][0])
				ad_registered = int(instance.instance_paramters['ADREG'][0])				
				m_registered = int(instance.instance_paramters['MREG'][0])
				p_registered = int(instance.instance_paramters['PREG'][0])
				op_registered = int(instance.instance_paramters['OPMODEREG'][0])
				a_sel = instance.instance_paramters['AMULTSEL'][0]
				b_sel = instance.instance_paramters['BMULTSEL'][0]
				preadd_sel = instance.instance_paramters['PREADDINSEL'][0]

				if b_sel != "B" or preadd_sel != "A":
					print("\tWarning: Not default values for BMULTSEL/PREADDINSEL.")

				# Check if DSP is used in register mode
				if not a_registered and not b_registered and not m_registered and not p_registered:
					print('\tNo internal registers used')
					continue
				elif a_sel == "A" and a_registered >= b_registered:
					pipeline_stages = a_registered + m_registered + p_registered
					print('\t%d pipeline registers: AREG=%d BREG=%d MREG=%d PREG=%d' % (pipeline_stages, a_registered, b_registered, m_registered, p_registered))
				elif a_sel == "AD" and (a_registered + ad_registered) >= b_registered:
					pipeline_stages = a_registered + ad_registered + m_registered + p_registered
					print('\t%d pipeline registers: AREG=%d BREG=%d ADREG=%d MREG=%d PREG=%d' % (pipeline_stages, a_registered, b_registered, ad_registered, m_registered, p_registered))
				elif b_registered:
					pipeline_stages = b_registered + m_registered + p_registered
					print('\t%d pipeline registers: AREG=%d BREG=%d MREG=%d PREG=%d' % (pipeline_stages, a_registered, b_registered, m_registered, p_registered))
				else:
					print('\tAREG=%d BREG=%d ADREG=%d CREG=%d DREG=%d MREG=%d PREG=%d. Warning: not supported yet' % (a_registered, b_registered, ad_registered, c_registered, d_registered, m_registered, p_registered))
					continue

				# Check the operation mode whether it is Multiply (feed forward) or MAC (acumulator) or others
				# OPMODE: W [8:7] Z [6:4] Y [3:2] X [1:0]
				# op = W [-9:-8] Z [-7:-5] Y [-4:-3] X [-2:-1]
				# For Multiplication: X 01 Y 01 Z 000 (011 for A*B+C) W 00 (11 for A*B+C)
				# For MAC: X 01 Y 01 Z 010 W 00
				op = instance.instance_ports['OPMODE'][0]

				if type(op) is list:
					# Check if the multiplier is used
					if op[-1] == LOGIC_1 and op[-2] == LOGIC_0 and op[-3] == LOGIC_1 and op[-4] == LOGIC_0:
						# Check if the accumulator is used
						if  op[-5] == LOGIC_0 and op[-6] == LOGIC_1 and op[-7] == LOGIC_0:
							print('\tOPMODE: MAC')
							acc_used = True
						elif op[-5] == LOGIC_0 and op[-6] == LOGIC_0 and op[-7] == LOGIC_0:	
							print('\tOPMODE: MULTIPLY')
							acc_used = False
						elif op[-5] == LOGIC_1 and op[-6] == LOGIC_0 and op[-7] == LOGIC_0:
							print('\tOPMODE: MULTIPLY + PCIN')
							acc_used = False
						elif op[-5] == LOGIC_1 and op[-6] == LOGIC_1 and op[-7] == LOGIC_0:
							print('\tOPMODE: MULTIPLY + C')
							acc_used = False
						elif op[-5] == LOGIC_1 and op[-6] == LOGIC_0 and op[-7] == LOGIC_1:
							print('\tOPMODE: MULTIPLY + >>PCIN')
							acc_used = False
						else:
							print('\tOPMODE: %s -- Multiplier is used. Warning: not supported yet' % str(op))
							continue
					else:
						print('\tOPMODE: %s -- Multiplier is not used. Warning: not supported yet' % str(op))
						continue
				else:
					print('\tOPMODE: %s -- Unidentified. Warning: not supported yet' % str(op))
					continue

				# Check if the DSP is used in CASCADE mode or not
				# ACOUT, BCOUT and PCOUT are cascade outputs
				# ACIN, BCIN and PCIN are cascade inputs
				if 'ACOUT' in instance.instance_ports:
					print('\tWarning: This DSP has a cascade ACOUT output')
				if 'BCOUT' in instance.instance_ports:
					print('\tWarning: This DSP has a cascade BCOUT output')
					# Remove the BCOUT cascade
					remove_dsp_cascade_port(netlist, added_lines, module, instance, 'BCOUT')					
				if 'PCOUT' in instance.instance_ports:
					print('\tWarning: This DSP has a cascade PCOUT output')
					# Remove the PCOUT cascade
					# remove_dsp_cascade_port(netlist, added_lines, module, instance, 'PCOUT')

				acin = instance.instance_ports['ACIN'][0]
				bcin = instance.instance_ports['BCIN'][0]
				pcin = instance.instance_ports['PCIN'][0]
				if not (type(acin) is list and acin[0] == LOGIC_0 and all(acin)):
					print('\tWarning: This DSP has a cascade ACIN input')
				if not (type(bcin) is list and bcin[0] == LOGIC_0 and all(bcin)) and instance.instance_paramters['B_INPUT'][0] == 'CASCADE':
					print('\tWarning: This DSP has a cascade BCIN input')
					# Remove the BCIN cascade
					remove_dsp_cascade_port(netlist, added_lines, module, instance, 'BCIN')
				if not (type(pcin) is list and pcin[0] == LOGIC_0 and all(pcin)):
					print('\tWarning: This DSP has a cascade PCIN input')
					# Remove the PCIN cascade
					# remove_dsp_cascade_port(netlist, added_lines, module, instance, 'PCIN')

				if not 'P' in instance.instance_ports:
					print('\tWarning: This DSP has no P output')
					continue

				# Check if internal registers are controlled with variable (not constant) CE signals
				# if there are variable CE signals, capture the input instead of the output
				print('\tCE signals:', end=' ')
				CEs = ['CEA1', 'CEA2', 'CEB1', 'CEB2', 'CEC', 'CED', 'CEAD', 'CEM', 'CEP']
				CEvs = [] # variable CEs i.e. not constant
				CEas = [] # variable CEs + CEs not zeroed
				for CE in CEs:
					if not check_constant_signal(instance.instance_ports[CE][0]):
						print('%s(%s)' % (CE, instance.instance_ports[CE][0]), end=' ')
						CEvs.append(CE)
						CEas.append(CE)
					elif instance.instance_ports[CE][0] == LOGIC_1:
						CEas.append(CE)
				print('')	
				if len(CEvs) > 2:
					OUTPUT_CAPTURE = False
				else:
					OUTPUT_CAPTURE = True

				# For DSPs with PCOUT and no PCIN, input capture is used
				# For DSPs with PCIN and no PCOUT, output capture is used
				# For DSPs with PCIN and PCOUT, a hybrid approach should be used (not implemented yet)
				if 'PCOUT' in instance.instance_ports and check_constant_signal(instance.instance_ports['PCIN'][0]):
					OUTPUT_CAPTURE = False

				# Input Capture is not supported in the following mode
				if instance.instance_ports['CEC'][0] == LOGIC_0 and not check_constant_signal(instance.instance_ports['C'][0]):
					OUTPUT_CAPTURE = True

				# The code to be added needs to know the following DSP ports: CLK, RSTA, P, A, B, OPMODE
				clk = instance.instance_ports['CLK'][0]
				rst = instance.instance_ports['RSTA'][0]
				a = instance.instance_ports['A'][0]
				b = instance.instance_ports['B'][0]
				c = instance.instance_ports['C'][0]
				d = instance.instance_ports['D'][0]
				p = instance.instance_ports['P'][0]
				cep = instance.instance_ports['CEP'][0]

				if OUTPUT_CAPTURE or acc_used:
					# Generate the added code for capture registers
					added_code = generate_dsp_output_capture_rtl_code(instance.instance_name, clk, rst, p, cep, pipeline_stages, acc_used, a, b, op, op_registered, dsp_id)

					# Add the generated code to the file. 
					add_generated_code(netlist, added_lines, module, added_code)

					# Rename the signal connected to P to [instance_name]_p
					lineno = get_lineno(added_lines, instance.instance_ports['P'][1])
					connect_signal_port(netlist, lineno, 'P', '%s_out' % instance.instance_name)

					if acc_used:
						# Rename the signal connected to A to [instance_name]_a
						lineno = get_lineno(added_lines, instance.instance_ports['A'][1])
						connect_signal_port(netlist, lineno, 'A', '%s_a' % instance.instance_name)

						# Rename the signal connected to B to [instance_name]_b
						lineno = get_lineno(added_lines, instance.instance_ports['B'][1])
						connect_signal_port(netlist, lineno, 'B', '%s_b' % instance.instance_name)

						# Rename the signal connected to OPMODE to [instance_name]_op
						lineno = get_lineno(added_lines, instance.instance_ports['OPMODE'][1])
						connect_signal_port(netlist, lineno, 'OPMODE', '%s_op' % instance.instance_name)

						# Change the parameter USE_MULT from "MULTIPLY" to "DYNAMIC"
						lineno = get_lineno(added_lines, instance.instance_paramters['USE_MULT'][1])
						connect_signal_port(netlist, lineno, 'USE_MULT', '\"DYNAMIC\"')

						# Rename the signal connected to CLK to [instance_name]_clk
						lineno = get_lineno(added_lines, instance.instance_ports['CLK'][1])
						connect_signal_port(netlist, lineno, 'CLK', '%s_clk_%d' % (instance.instance_name, dsp_id))

						# Propagate signal [instance_name]_clk up to the top module and connect it to signal clk_2
						# FIXME: This is only valid if there is only one clk in the module containing the DSP, and that clk is driven from the top module
						propagate_input_signal_up(modules, netlist, added_lines, module, '%s_clk_%d' % (instance.instance_name, dsp_id), top_name, 'clk_2')

				else:
					print('\tInput Capture')

					# CEA1 is only used if AREG = 2 or INMODE[0] = 1
					if a_registered == 2:
						cea = instance.instance_ports['CEA1'][0]
					else:
						cea = instance.instance_ports['CEA2'][0]

					# CEB1 is only used if BREG = 2 or INMODE[4] = 1
					if b_registered == 2:
						ceb = instance.instance_ports['CEB1'][0]
					else:
						ceb = instance.instance_ports['CEB2'][0]

					cec = instance.instance_ports['CEC'][0]
					ced = instance.instance_ports['CED'][0]

					a_constant = check_constant_signal(a)
					b_constant = check_constant_signal(b)
					c_constant = check_constant_signal(c)
					d_constant = check_constant_signal(d)

					# Generate the added code for capture registers
					added_code = generate_dsp_input_capture_rtl_code(instance.instance_name, clk, rst, a, b, c, d, a_constant, b_constant, c_constant, d_constant, cea, ceb, cec, ced, pipeline_stages, dsp_id)

					# Add the generated code to the file. 
					add_generated_code(netlist, added_lines, module, added_code)

					# Rename the signal connected to A to [instance_name]_a
					if not a_constant:
						lineno = get_lineno(added_lines, instance.instance_ports['A'][1])
						connect_signal_port(netlist, lineno, 'A', '%s_a' % instance.instance_name)

					# Rename the signal connected to B to [instance_name]_b
					if not b_constant:
						lineno = get_lineno(added_lines, instance.instance_ports['B'][1])
						connect_signal_port(netlist, lineno, 'B', '%s_b' % instance.instance_name)

					# Rename the signal connected to C to [instance_name]_c
					if not c_constant:
						lineno = get_lineno(added_lines, instance.instance_ports['C'][1])
						connect_signal_port(netlist, lineno, 'C', '%s_c' % instance.instance_name)

					# Rename the signal connected to D to [instance_name]_d
					if not d_constant:
						lineno = get_lineno(added_lines, instance.instance_ports['D'][1])
						connect_signal_port(netlist, lineno, 'D', '%s_d' % instance.instance_name)

					# Rename the signal connected to CLK to [instance_name]_clk
					lineno = get_lineno(added_lines, instance.instance_ports['CLK'][1])
					connect_signal_port(netlist, lineno, 'CLK', '%s_clk_%d' % (instance.instance_name, dsp_id))

					# Propagate signal [instance_name]_clk up to the top module and connect it to signal clk_[pipeline_stages]
					# FIXME: This is only valid if there is only one clk in the module containing the DSP, and that clk is driven from the top module
					propagate_input_signal_up(modules, netlist, added_lines, module, '%s_clk_%d ' % (instance.instance_name, dsp_id), top_name, 'clk_%s' % pipeline_stages)

					# To allow warming up the internal registers, all variable CEs are ORed with [instance_name]_ce (which is high as long as replay_flag is high)
					# TODO: The ORing should be done in the generated code
					# [instance_name]_ce is high as long as replay_flag is high which is high for N cycles where N is the number of pipeline stages
					# But since we are triggering the DSP clk two more cycles before resuming the design, (or fixed number of cycles (two or more depending on pipeline stages))
					# we need to disable the CEs in these two cycles. 
					# [instance_name]_ce_1 is high one cycle more than replay_flag (high for pipeline_stages+1)
					# [instance_name]_ce_2 is high two cycles more than replay_flag (high for pipeline_stages+2)
					# If we detect during runtime that the DSP is not pipelined (CEO, e.g. CEP , is high after CEI, e.g. CEA2, went low), we allow CEO to be up during these extra cycles
					# The detection of the unpipelined mode and the calculation of the number of extra cycles in which CEP should be up is done by replay_ce_flag_1 replay_ce_flag_2
					# CEO includes ['CEAD', 'CEM', 'CEP']
					# CEI includes ['CEA1', 'CEA2', 'CEB1', 'CEB2', 'CEC', 'CED']
					if len(CEvs) != 0:
						for CE in CEvs:
							if CE in ['CEA1', 'CEA2', 'CEB1', 'CEB2', 'CEC', 'CED']:
								CEI = CE
								break
						CEO = 'CEP'

						added_code = []
						added_code.append('(* dont_touch = "true" *) reg replay_ce_flag_1_%s = 0;\n' % dsp_id)
						added_code.append('(* dont_touch = "true" *) reg replay_ce_flag_2_%s = 0;\n' % dsp_id)
						added_code.append('always @(posedge %s )\n' % clk)
						added_code.append('begin\n')
						added_code.append('  if (%s | %s )\n' % (rst, instance.instance_ports[CEI][0]))
						added_code.append('  begin\n')
						added_code.append('    replay_ce_flag_1_%s <= 0;\n' % dsp_id)
						added_code.append('    replay_ce_flag_2_%s <= 0;\n' % dsp_id)
						added_code.append('  end\n')
						added_code.append('  else if (%s )\n' % (instance.instance_ports[CEO][0]))
						added_code.append('  begin\n')
						added_code.append('    replay_ce_flag_1_%s <= 1;\n' % dsp_id)
						added_code.append('    if (replay_ce_flag_1_%s)\n' % dsp_id)
						added_code.append('      replay_ce_flag_2_%s <= 1;\n' % dsp_id)
						added_code.append('  end\n')
						added_code.append('end\n')
						add_generated_code(netlist, added_lines, module, added_code)

						for CE in CEas:
							added_code = []
							added_code.append('wire %s_%s ;\n' % (instance.instance_name, CE))

							if CE in ['CEAD', 'CEM', 'CEP']:
								# Depending on the value of replay_ce_flag, the CEO can be enabled for 0 cycles in the extra cycles (same as CEI), or 1 cycle or 2 cycles
								added_code.append('assign %s_%s = (%s & ~%s_ce_2 ) | (replay_ce_flag_2_%s ? %s_ce_2 : replay_ce_flag_1_%s ? %s_ce_1 : %s_ce) ;\n' % (instance.instance_name, CE, instance.instance_ports[CE][0], instance.instance_name, dsp_id, instance.instance_name, dsp_id, instance.instance_name, instance.instance_name))
							else:
								# Whatever the value of the original CE, the new CE should be on when _ce is up, and forced off when only _ce_2 is up and not _ce
								added_code.append('assign %s_%s = (%s & ~%s_ce_2 ) | %s_ce ;\n' % (instance.instance_name, CE, instance.instance_ports[CE][0], instance.instance_name, instance.instance_name))

							add_generated_code(netlist, added_lines, module, added_code)

							lineno = get_lineno(added_lines, instance.instance_ports[CE][1])
							connect_signal_port(netlist, lineno, CE, '%s_%s' % (instance.instance_name, CE))

				# Increment the dsp_id. It is used to uniquely identify signals that propagates out of the module and added registers
				# TODO: should be added to replay_flag and opmode_flag
				dsp_id += 1

def remove_dsp_cascade_port(netlist, added_lines, module, instance, cascade_port):

	if cascade_port == 'BCOUT':
		# Currently support BREG == 1
		b_registered = int(instance.instance_paramters['BREG'][0])
		if b_registered != 1:
			print('ERROR: remove_dsp_cascade_port failed. BREG = %d' % b_registered)
			return

		dsp_bcout = instance.instance_ports['BCOUT'][0]
		dsp_b = instance.instance_ports['B'][0]
		dsp_clk = instance.instance_ports['CLK'][0]
		dsp_name = instance.instance_name
		dsp_b_width = 18

		# Rename the signal connected to BCOUT to NULL
		lineno = get_lineno(added_lines, instance.instance_ports['BCOUT'][1])
		connect_signal_port(netlist, lineno, 'BCOUT', ' ')

		added_code = []
		added_code.append('reg [%d-1:0] %s_b_reg ;\n' % (dsp_b_width, dsp_name))
		added_code.append('assign %s = %s_b_reg ;\n' % (dsp_bcout, dsp_name))
		added_code.append('always @(posedge %s )\n' % dsp_clk)
		added_code.append('begin\n')
		added_code.append('  %s_b_reg <= %s;\n' % (dsp_name, concat_signal_to_string(dsp_b)))
		added_code.append('end\n')

		# Add the formated code to the file. 
		add_generated_code(netlist, added_lines, module, added_code)

	elif cascade_port == 'BCIN':
		dsp_bcin = instance.instance_ports['BCIN'][0]
		dsp_b = instance.instance_ports['B'][0]

		# Make sure port B is not connected to any signal
		if not (type(dsp_b) is list and dsp_b[0] == LOGIC_0 and all(dsp_b)):
			print('ERROR: remove_dsp_cascade_port failed. Port B is connected to %s' % dsp_b)
			return

		# Rename the signal connected to BCIN to B siganl
		lineno = get_lineno(added_lines, instance.instance_ports['BCIN'][1])
		connect_signal_port(netlist, lineno, 'BCIN', concat_signal_to_string(dsp_b))

		# Rename the signal connected to B to BCIN siganl
		lineno = get_lineno(added_lines, instance.instance_ports['B'][1])
		connect_signal_port(netlist, lineno, 'B', concat_signal_to_string(dsp_bcin))

		# Change the parameter B_INPUT from "CASCADE" to "DIRECT"
		lineno = get_lineno(added_lines, instance.instance_paramters['B_INPUT'][1])
		connect_signal_port(netlist, lineno, 'B_INPUT', '\"DIRECT\"')

	elif cascade_port == 'PCOUT':
		# If port P doesn't exist, rename port PCOUT to P, and add port P to instance ports
		if not 'P' in instance.instance_ports:
			lineno = get_lineno(added_lines, instance.instance_ports['PCOUT'][1])
			netlist[lineno-1] = netlist[lineno-1].replace('.PCOUT', '.P')

			instance.instance_ports['P'] = instance.instance_ports['PCOUT']

		# If port P does exist, connect the signal that was connected to PCOUT to the signal
		# connected to P
		else:
			dsp_p = instance.instance_ports['P'][0]
			dsp_pcout = instance.instance_ports['PCOUT'][0]

			# Rename the signal connected to PCOUT to NULL
			lineno = get_lineno(added_lines, instance.instance_ports['PCOUT'][1])
			connect_signal_port(netlist, lineno, 'PCOUT', ' ')

			added_code = []
			added_code.append('assign %s = %s ;\n' % (concat_signal_to_string(dsp_pcout), concat_signal_to_string(dsp_p)))

			# Add the formated code to the file. 
			add_generated_code(netlist, added_lines, module, added_code)

	elif cascade_port == 'PCIN':
		dsp_pcin = instance.instance_ports['PCIN'][0]
		dsp_c = instance.instance_ports['C'][0]
		dsp_op = instance.instance_ports['OPMODE'][0]

		# Make sure port C is not connected to any signal
		if not (type(dsp_c) is list and dsp_c[0] == LOGIC_0 and all(dsp_c)):
			print('ERROR: remove_dsp_cascade_port failed. Port C is connected to %s' % dsp_c)
			return

		# Rename the signal connected to PCIN to C siganl
		lineno = get_lineno(added_lines, instance.instance_ports['PCIN'][1])
		connect_signal_port(netlist, lineno, 'PCIN', concat_signal_to_string(dsp_c))

		# Rename the signal connected to C to PCIN siganl
		instance.instance_ports['C'][0] = instance.instance_ports['PCIN'][0]
		lineno = get_lineno(added_lines, instance.instance_ports['C'][1])
		connect_signal_port(netlist, lineno, 'C', concat_signal_to_string(dsp_pcin))

		# Change the parameter CREG to 0
		lineno = get_lineno(added_lines, instance.instance_paramters['CREG'][1])
		connect_signal_port(netlist, lineno, 'CREG', '0')

		# Change the OPMODE from MULTIPLY + PCIN to MULTIPLY + C
		if not (dsp_op[-1] == LOGIC_1 and dsp_op[-2] == LOGIC_0 and dsp_op[-3] == LOGIC_1 and dsp_op[-4] == LOGIC_0 and dsp_op[-5] == LOGIC_1 and dsp_op[-6] == LOGIC_0 and dsp_op[-7] == LOGIC_0):
			print('ERROR: remove_dsp_cascade_port failed. OPMODE is not MULTIPLY + PCIN')
			return

		dsp_op[-5] = LOGIC_1
		dsp_op[-6] = LOGIC_1 
		dsp_op[-7] == LOGIC_0

		lineno = get_lineno(added_lines, instance.instance_ports['OPMODE'][1])
		connect_signal_port(netlist, lineno, 'OPMODE', concat_signal_to_string(dsp_op))


def generate_dsp_input_capture_rtl_code(dsp_name, dsp_clk, dsp_rst, dsp_a, dsp_b, dsp_c, dsp_d, a_constant, b_constant, c_constant, d_constant, cea, ceb, cec, ced, pipeline_stages, dsp_id):
	'''This function assumes that A will be connected to a signal named [instance_name]_a (originally connected to dsp_a)'''
	'''This function assumes that B will be connected to a signal named [instance_name]_b (originally connected to dsp_b)'''
	'''This function assumes that C will be connected to a signal named [instance_name]_b (originally connected to dsp_c)'''
	'''This function assumes that D will be connected to a signal named [instance_name]_b (originally connected to dsp_d)'''
	'''This function assumes that CLK will be connected to a signal named [instance_name]_clk (originally connected to dsp_clk)'''
	'''This function assumes that CEs will be ORed to a signal named [instance_name]_ce'''

	added_code = []

	port_name = ['a', 'b', 'c', 'd']
	port_value = [dsp_a, dsp_b, dsp_c, dsp_d]
	port_width = [30, 18, 48, 27]
	port_constant = [a_constant, b_constant, c_constant, d_constant]
	port_enable = [cea, ceb, cec, ced]

	for j in range(len(port_name)):
		if not port_constant[j]:
			print('\t\t%s is not constant' % port_name[j].upper())

	# Code for capture registers
	added_code.append('/* DSP Internal Register Capture - Input Capture */\n')
	added_code.append('/* Replay Registers */\n')
	for i in range(pipeline_stages+2):
		added_code.append('(* dont_touch = "true" *) reg replay_flag_%d_%d_%d = 0;\n' % (pipeline_stages, i+1, dsp_id))

	added_code.append('wire %s_ce ;\n' % (dsp_name))
	added_code.append('assign %s_ce = replay_flag_%d_%d_%d ;\n' % (dsp_name, pipeline_stages, pipeline_stages, dsp_id))

	added_code.append('wire %s_ce_1 ;\n' % (dsp_name))
	added_code.append('assign %s_ce_1 = replay_flag_%d_%d_%d ;\n' % (dsp_name, pipeline_stages, pipeline_stages+1, dsp_id))

	added_code.append('wire %s_ce_2 ;\n' % (dsp_name))
	added_code.append('assign %s_ce_2 = replay_flag_%d_%d_%d ;\n' % (dsp_name, pipeline_stages, pipeline_stages+2, dsp_id))

	for j in range(len(port_name)):
		if not port_constant[j]:
			added_code.append('wire [%d-1:0] %s_%s ;\n' % (port_width[j], dsp_name, port_name[j]))
			for i in range(pipeline_stages):
				added_code.append('reg [%d-1:0] replay_reg_%s_%d_%d_%d = 0;\n' % (port_width[j], port_name[j], pipeline_stages, i+1, dsp_id))

	added_code.append('always @(posedge %s_clk_%d )\n' % (dsp_name, dsp_id))
	added_code.append('begin\n')
	added_code.append('  if (%s )\n' % dsp_rst)
	added_code.append('  begin\n')
	for i in range(pipeline_stages+2):
		added_code.append('    replay_flag_%d_%d_%d = 0;\n' % (pipeline_stages, i+1, dsp_id))

	for j in range(len(port_name)):
		if not port_constant[j]:
			for i in range(pipeline_stages):
				added_code.append('    replay_reg_%s_%d_%d_%d = 0;\n' % (port_name[j], pipeline_stages, i+1, dsp_id))
	
	added_code.append('  end\n')
	added_code.append('  else\n')
	added_code.append('  begin\n')

	for j in range(len(port_name)):
		if not port_constant[j]:
			added_code.append('    if (%s | %s_ce )\n' % (port_enable[j], dsp_name))
			added_code.append('    begin\n')
			added_code.append('      replay_reg_%s_%d_1_%d <= %s ;\n' % (port_name[j], pipeline_stages, dsp_id, concat_signal_to_string(port_value[j])))
			for i in range(pipeline_stages-1):
				added_code.append('      replay_reg_%s_%d_%d_%d <= replay_reg_%s_%d_%d_%d;\n' % (port_name[j], pipeline_stages, i+2, dsp_id, port_name[j], pipeline_stages, i+1, dsp_id))
			added_code.append('    end\n')
	
	added_code.append('    if (replay_flag_%d_1_%d)\n' % (pipeline_stages, dsp_id))
	added_code.append('      replay_flag_%d_1_%d <= 0;\n' % (pipeline_stages, dsp_id))
	for i in range(pipeline_stages-1+2):
		added_code.append('    replay_flag_%d_%d_%d <= replay_flag_%d_%d_%d;\n' % (pipeline_stages, i+2, dsp_id, pipeline_stages, i+1, dsp_id))
	added_code.append('  end\n')
	added_code.append('end\n')

	for j in range(len(port_name)):
		if not port_constant[j]:
				added_code.append('assign %s_%s = replay_flag_%d_%d_%d ? replay_reg_%s_%d_%d_%d : %s ;\n' % (dsp_name, port_name[j], pipeline_stages, pipeline_stages, dsp_id, port_name[j], pipeline_stages, pipeline_stages, dsp_id, concat_signal_to_string(port_value[j])))
	
	added_code.append('\n')

	added_code.append('/* DSP Internal Register Capture - Input Capture */\n')
	added_code.append('\n')

	return added_code

def generate_dsp_output_capture_rtl_code(dsp_name, dsp_clk, dsp_rst, dsp_out, cep, pipeline_stages, acc_used, dsp_a, dsp_b, dsp_op, op_registered, dsp_id):
	'''This function assumes that P will be connected to a signal named [instance_name]_out (originally connected to dsp_out)'''
	'''This function assumes that A will be connected to a signal named [instance_name]_a (originally connected to dsp_a)'''
	'''This function assumes that B will be connected to a signal named [instance_name]_b (originally connected to dsp_b)'''
	'''This function assumes that OPMODE will be connected to a signal named [instance_name]_op (originally connected to dsp_op)'''
	added_code = []

	if not check_constant_signal(cep):
		experimental_ce_fix = True
	else:
		experimental_ce_fix = False

	dsp_out_width = 48
	dsp_a_width = 30
	dsp_b_width = 18
	dsp_op_width = 9

	# Code for capture registers
	added_code.append('/* DSP Internal Register Capture - Output Capture */\n')
	added_code.append('/* Replay Registers */\n')
	added_code.append('wire [%d-1:0] %s_out ;\n' % (dsp_out_width, dsp_name))
	for i in range(pipeline_stages):
		added_code.append('(* dont_touch = "true" *) reg replay_flag_%d_%d_%d = 0;\n' % (pipeline_stages, i+1, dsp_id))
		added_code.append('reg [%d-1:0] replay_reg_%d_%d_%d = 0;\n' % (dsp_out_width, pipeline_stages, i+1, dsp_id))

	added_code.append('always @(posedge %s )\n' % dsp_clk)
	added_code.append('begin\n')
	added_code.append('  if (%s )\n' % dsp_rst)
	added_code.append('  begin\n')
	for i in range(pipeline_stages):
		added_code.append('    replay_flag_%d_%d_%d = 0;\n' % (pipeline_stages, i+1, dsp_id))
		added_code.append('    replay_reg_%d_%d_%d = 0;\n' % (pipeline_stages, i+1, dsp_id))
	added_code.append('  end\n')
	added_code.append('  else\n')
	added_code.append('  begin\n')

	# In this experimental fix which helps if P register has CEP, during replaying the captured output, the input to capture registers are stopped,
	# and we do not switch back to DSP output until an asserted CEP signal
	# maintaining the last captured value of P for any number of cycles until CEP is enabled again
	if experimental_ce_fix:
		added_code.append('    if (~replay_flag_%d_%d_%d)\n' % (pipeline_stages, pipeline_stages, dsp_id))
		added_code.append('      replay_reg_%d_1_%d <= %s_out ;\n' % (pipeline_stages, dsp_id, dsp_name))
		for i in range(pipeline_stages-1):
			added_code.append('    replay_reg_%d_%d_%d <= replay_reg_%d_%d_%d;\n' % (pipeline_stages, i+2, dsp_id, pipeline_stages, i+1, dsp_id))
		added_code.append('    if (replay_flag_%d_1_%d)\n' % (pipeline_stages, dsp_id))
		added_code.append('      replay_flag_%d_1_%d <= 0;\n' % (pipeline_stages, dsp_id))
		for i in range(pipeline_stages-1-1):
			added_code.append('    replay_flag_%d_%d_%d <= replay_flag_%d_%d_%d;\n' % (pipeline_stages, i+2, dsp_id, pipeline_stages, i+1, dsp_id))
		added_code.append('    if (%s )\n' % cep)	
		added_code.append('      replay_flag_%d_%d_%d <= replay_flag_%d_%d_%d;\n' % (pipeline_stages, pipeline_stages, dsp_id, pipeline_stages, pipeline_stages-1, dsp_id))
	else:
		added_code.append('    replay_reg_%d_1_%d <= %s_out ;\n' % (pipeline_stages, dsp_id, dsp_name))
		for i in range(pipeline_stages-1):
			added_code.append('    replay_reg_%d_%d_%d <= replay_reg_%d_%d_%d;\n' % (pipeline_stages, i+2, dsp_id, pipeline_stages, i+1, dsp_id))
		added_code.append('    if (replay_flag_%d_1_%d)\n' % (pipeline_stages, dsp_id))
		added_code.append('      replay_flag_%d_1_%d <= 0;\n' % (pipeline_stages, dsp_id))
		for i in range(pipeline_stages-1):
			added_code.append('    replay_flag_%d_%d_%d <= replay_flag_%d_%d_%d;\n' % (pipeline_stages, i+2, dsp_id, pipeline_stages, i+1, dsp_id))

	added_code.append('  end\n')
	added_code.append('end\n')

	added_code.append('assign %s = replay_flag_%d_%d_%d ? replay_reg_%d_%d_%d : %s_out ;\n' % (concat_signal_to_string(dsp_out), pipeline_stages, pipeline_stages, dsp_id, pipeline_stages, pipeline_stages, dsp_id, dsp_name))
	added_code.append('\n')

	if acc_used:
		# Code for restoring the accumulator value
		added_code.append('wire [%d-1:0] %s_a ;\n' % (dsp_a_width, dsp_name))
		added_code.append('wire [%d-1:0] %s_b ;\n' % (dsp_b_width, dsp_name))
		added_code.append('reg [%d-1:0] %s_op , %s_op_r ;\n' % (dsp_op_width, dsp_name, dsp_name))
		added_code.append('wire [%d-1:0] %s_op_s ;\n' % (dsp_op_width, dsp_name))
		added_code.append('(* dont_touch = "true" *) reg replay_flag = 0;\n')
		added_code.append('(* dont_touch = "true" *) reg opmode_flag = 0;\n')
		added_code.append('always @(posedge %s_clk_%d )\n' % (dsp_name, dsp_id))
		added_code.append('begin\n')
		added_code.append('  if (%s )\n' % dsp_rst)
		added_code.append('  begin\n')
		added_code.append('    replay_flag <= 0;\n')
		added_code.append('    opmode_flag <= 0;\n')
		added_code.append('  end\n')
		added_code.append('  else \n')
		added_code.append('  begin\n')
		added_code.append('    if (replay_flag)\n')
		added_code.append('      replay_flag <= 0;\n')
		added_code.append('    opmode_flag <= replay_flag;\n')
		added_code.append('  end\n')
		added_code.append('end\n')
		added_code.append('assign %s_a = replay_flag ? replay_reg_%d_1_%d[47:18] : %s;\n' % (dsp_name, pipeline_stages, dsp_id, concat_signal_to_string(dsp_a)))
		added_code.append('assign %s_b = replay_flag ? replay_reg_%d_1_%d[17:0] : %s;\n' % (dsp_name, pipeline_stages, dsp_id, concat_signal_to_string(dsp_b)))
		added_code.append('assign %s_op_s = replay_flag ? {\\<const0> ,\\<const0> ,\\<const0> ,\\<const0> ,\\<const0> ,\\<const0> ,\\<const0> ,\\<const1> ,\\<const1> } : opmode_flag ? {\\<const0> ,\\<const0> ,\\<const0> ,\\<const1> ,\\<const0> ,\\<const0> ,\\<const0> ,\\<const0> ,\\<const0> } : %s;\n' % (dsp_name, concat_signal_to_string(dsp_op)))
		added_code.append('\n')
		#FIXME op registering should depend on pipeline stages and op_registered
		added_code.append('always @(posedge %s_clk_%d )\n' % (dsp_name, dsp_id))
		added_code.append('begin\n')
		added_code.append('  %s_op_r <= %s_op_s ;\n' % (dsp_name, dsp_name))
		added_code.append('  %s_op <= %s_op_r ;\n' % (dsp_name, dsp_name))
		added_code.append('end\n')

	added_code.append('/* DSP Internal Register Capture - Output Capture */\n')
	added_code.append('\n')

	return added_code