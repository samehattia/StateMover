import re

def parse_ram_location_file(rl_file, ram_name, ram_type, ram_xy, ram_bel):

	#### Parse the file ####
	while True:
		# Read a line
		line = rl_file.readline()

		# If we reach the EOF, break
		if not line:
			break

		# Split the line into words delimited with space
		words = line.split()

		ram_name.append(words[0])
		ram_type.append(words[1])
		if 'SLICE' in words[2]:
			ram_xy.append(words[2].lstrip('SLICE_'))
			ram_bel.append(words[3].lstrip('SLICEM').lstrip('.').rstrip('LUT')) #[A-H][5-6]
		elif 'RAMB36' in words[2]:
			ram_xy.append(words[2].lstrip('RAMB36_'))
			ram_bel.append(words[3])
		else:
			print("UNSUPPORTED RAM")

