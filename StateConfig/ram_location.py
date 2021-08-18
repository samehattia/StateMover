import re

class RamTypeInfo:
	"""Defines a RAM type info"""
	ram_type = ''
	ram_xy = ''
	ram_bel = ''

	def __init__(self, r_type, r_xy, r_bel):
		self.ram_type = r_type
		self.ram_xy = r_xy
		self.ram_bel = r_bel

def parse_ram_location_file(rl_file, bram_enable=True, task_name=''):

	rams = {}

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
			ram_type = words[1]
			ram_xy = words[2].lstrip('SLICE_')
			ram_bel = words[3].lstrip('SLICEM').lstrip('.').rstrip('LUT') #[A-H][5-6]
			rams[words[0]] = RamTypeInfo(ram_type, ram_xy, ram_bel)

		elif bram_enable and 'RAMB36' in words[2]:
			ram_type = words[1]
			ram_xy = words[2].lstrip('RAMB36_')
			ram_bel = words[3]
			rams[words[0]] = RamTypeInfo(ram_type, ram_xy, ram_bel)

		elif bram_enable and 'RAMB18' in words[2]:
			ram_type = words[1]
			ram_xy = words[2].lstrip('RAMB18_')
			ram_bel = words[3]
			rams[words[0]] = RamTypeInfo(ram_type, ram_xy, ram_bel)

	return rams
