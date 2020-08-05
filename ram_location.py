import re

def parse_ram_location_file(rl_file, ram_name, ram_type, ram_xy, ram_bel, bram_enable=True, task_name=''):

	#### Parse the file ####
	while True:
		# Read a line
		line = rl_file.readline()

		# If we reach the EOF, break
		if not line:
			break
			
		# If it is a comment line, continue
		if line[0] == '#':
			continue

		# Split the line into words delimited with space
		words = line.split()

		if task_name != '' and not words[0].startswith(task_name):
			continue

		if 'SLICE' in words[2]:
			ram_name.append(words[0])
			ram_type.append(words[1])
			ram_xy.append(words[2].lstrip('SLICE_'))
			ram_bel.append(words[3].lstrip('SLICEM').lstrip('.').rstrip('LUT')) #[A-H][5-6]
		elif bram_enable and 'RAMB36' in words[2]:
			ram_name.append(words[0])
			ram_type.append(words[1])
			ram_xy.append(words[2].lstrip('RAMB36_'))
			ram_bel.append(words[3])
		elif bram_enable and 'RAMB18' in words[2]:
			ram_name.append(words[0])
			ram_type.append(words[1])
			ram_xy.append(words[2].lstrip('RAMB18_'))
			ram_bel.append(words[3])

