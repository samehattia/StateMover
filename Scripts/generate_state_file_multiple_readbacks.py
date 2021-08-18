#!/usr/bin/env python3

'''
This script is used to get a complete checkpoint when the design has BRAMs and DSPs in registered modes.
It takes multiple state files. 
The first file contains the correct values of registers. It has an suffux of .0
The other files contains the correct values of replay registers and BRAMs. 
The suffix of each file determines the number of clock steps before the readback.
Only replay_registers of depth equal to the number of clock steps are extracted from the file
It then generates a state file that can be used to resume the execution correctly. 
The script sets the replay flags
The script assumes no BRAMs in latch mode
'''

import sys
import os.path

# First argument: first state file *.0
if len(sys.argv) >= 3:
	first_file_name = sys.argv[1]
else:
	print("Expects at least two arguments")
	exit()

if first_file_name[-1] != '0':
	print("The suffix of the first file should be .0")
	exit()

output_file_name = first_file_name.rstrip('.0')

with open(output_file_name, 'w') as output_file:
	with open(first_file_name, 'r') as first_file:
		for line in first_file:
			# Skip BRAM contents in the first file
			if len(line) > 4096:
				continue

			# Skip replay registers in the first file
			if 'replay_reg_1_' in line or 'replay_reg_2_' in line or 'replay_reg_3_' in line or 'replay_reg_4_' in line :
				continue

			# Skip replay flags in the first file
			if 'replay_flag_' in line:
				continue

			output_file.write(line)

	for i in range(2, len(sys.argv)):
		state_file_name = sys.argv[i]
		clk_steps = int(state_file_name[-1])

		with open(state_file_name, 'r') as state_file:
			for line in state_file:
				# Get BRAM contents from the file generated after 2 clk steps
				if clk_steps == 2 and len(line) > 4096:
					output_file.write(line)

				# Get replay registers with matching clk_steps == pipeline_stages
				if ('replay_reg_' + str(clk_steps) + '_') in line:
					output_file.write(line)

				# Get replay flags with matching clk_steps == pipeline_stages and set them
				if ('replay_flag_' + str(clk_steps) + '_') in line:
					words = line.split()
					output_file.write(words[0] + ' 1\n')

