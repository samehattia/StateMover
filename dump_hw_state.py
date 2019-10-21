#!/usr/bin/env python3

import sys
import re
import os.path

from logic_location import parse_logic_location_file
from ram_location import parse_ram_location_file

from file_parser import parse_rdbk_file
from register_reader import get_register_value_from_frame_data
from lram_reader import get_lram_value_from_frame_data

# Information collected from the .ll file
reg_name = []
reg_bit_offset = []
reg_frame_address = [] 
reg_frame_offset = []
reg_slice_xy = []

bram_bit_offset = []
bram_frame_address = []
bram_frame_offset = []
bram_xy = []
bram_bit = []

lram_bit_offset = []
lram_frame_address = []
lram_frame_offset = []
lram_xy = []
lram_bit = []

# Information collected from the .rl file
ram_name = [] 
ram_type = [] 
ram_xy = [] 
ram_bel = []

rdbk_frame_data = []

# First argument: logic location file, Second argument: readback file
if len(sys.argv) == 3:
	ll_file_name = sys.argv[1]
	rl_file_name = 0
	rdbk_file_name = sys.argv[2]
elif len(sys.argv) == 4:
	ll_file_name = sys.argv[1]
	rl_file_name = sys.argv[2]
	rdbk_file_name = sys.argv[3]
else:
	print("Expects at least two arguments: logic location file, [ram location file] and readback file")
	exit()

# Parse the logic location file
with open(ll_file_name, 'r') as ll_file:
	parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

# Sort lram list
indexes = list(range(len(lram_xy)))
indexes.sort(key=lram_xy.__getitem__)

lram_bit_offset = list(map(lram_bit_offset.__getitem__, indexes))
lram_frame_address = list(map(lram_frame_address.__getitem__, indexes))
lram_frame_offset = list(map(lram_frame_offset.__getitem__, indexes))
lram_xy = list(map(lram_xy.__getitem__, indexes))
lram_bit = list(map(lram_bit.__getitem__, indexes))

# Parse the ram location file
if rl_file_name:
	with open(rl_file_name, 'r') as rl_file:
		parse_ram_location_file(rl_file, ram_name, ram_type, ram_xy, ram_bel)

# Parse the readback file
with open(rdbk_file_name, 'r') as rdbk_file:
	parse_rdbk_file(rdbk_file, rdbk_frame_data)

# Dump state elements values
with open("hw_state.dump", 'w') as output_file:
	# Dump register values
	for name in reg_name:
		value = get_register_value_from_frame_data(name, 1, rdbk_frame_data, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
		output_file.write(name + ' ' + str(value) + '\n')

	# Dump lutram values
	for i in range(len(ram_name)):
		name = ram_name[i]
		x = int(re.split("Y", ram_xy[i].lstrip('X'), 0)[0])
		y = int(re.split("Y", ram_xy[i].lstrip('X'), 0)[1])

		# Returns the memory value of the 8 LUTs in this XY slice
		value = get_lram_value_from_frame_data(x, y, 64, rdbk_frame_data, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
		
		# Check if the RAM occupies the 8 LUTs and has a depth of 64
		if ram_type[i] == 'RAM64M8' or ram_type[i] == 'RAM64M':
			for j in range(8):
				output_file.write(name + '/mem_' + chr(ord('a') + j) + ' ' + "{:016x}".format(value[j], 'x') + '\n')

		# Check if the RAM occupies the 8 LUTs and has a depth of 32
		elif ram_type[i] == 'RAM32M16' or ram_type[i] == 'RAM32M':
			for j in range(8):
				# The value of an RAM32M is constructed from one bit from the least 32 bits then one bit from th most 32 bits and so on
				lut_value = value[j]
				lut_value_bin = "{:064b}".format(lut_value, 'b')
				lutram_value_bin = lut_value_bin[-64] + lut_value_bin[-32] + lut_value_bin[-63] + lut_value_bin[-31] + lut_value_bin[-62] + lut_value_bin[-30] + lut_value_bin[-61] + lut_value_bin[-29] + lut_value_bin[-60] + lut_value_bin[-28]+ lut_value_bin[-59] + lut_value_bin[-27] + lut_value_bin[-58] + lut_value_bin[-26] + lut_value_bin[-57] + lut_value_bin[-25] + lut_value_bin[-56] + lut_value_bin[-24] + lut_value_bin[-55] + lut_value_bin[-23] + lut_value_bin[-54] + lut_value_bin[-22] + lut_value_bin[-53] + lut_value_bin[-21] + lut_value_bin[-52] + lut_value_bin[-20]+ lut_value_bin[-51] + lut_value_bin[-19] + lut_value_bin[-50] + lut_value_bin[-18] + lut_value_bin[-49] + lut_value_bin[-17] + lut_value_bin[-48] + lut_value_bin[-16] + lut_value_bin[-47] + lut_value_bin[-15] + lut_value_bin[-46] + lut_value_bin[-14] + lut_value_bin[-45] + lut_value_bin[-13] + lut_value_bin[-44] + lut_value_bin[-12]+ lut_value_bin[-43] + lut_value_bin[-11] + lut_value_bin[-42] + lut_value_bin[-10] + lut_value_bin[-41] + lut_value_bin[-9] + lut_value_bin[-40] + lut_value_bin[-8] + lut_value_bin[-39] + lut_value_bin[-7] + lut_value_bin[-38] + lut_value_bin[-6] + lut_value_bin[-37] + lut_value_bin[-5] + lut_value_bin[-36] + lut_value_bin[-4]+ lut_value_bin[-35] + lut_value_bin[-3] + lut_value_bin[-34] + lut_value_bin[-2] + lut_value_bin[-33] + lut_value_bin[-1]
				lutram_value = int(lutram_value_bin, 2)
				output_file.write(name + '/mem_' + chr(ord('a') + j) + ' ' + "{:016x}".format(lutram_value, 'x') + '\n')

		# Check if the RAM is an SRL
		elif ram_type[i] == 'SRL16E':
			lut = ord(ram_bel[i][0]) - ord('A')
			# The value of an SRL16E with bel [A-H]6LUT is in the odd bits of most 32 bits
			if ram_bel[i][1] == '6':
				lut_value = value[lut] >> 32
			# The value of an SRL16E with bel [A-H]5LUT is in the odd bits of least 32 bits
			else:
				lut_value = value[lut] 	
			# Get the odd bits
			lut_value_bin = "{:032b}".format(lut_value, 'b')
			odd_bits_bin = lut_value_bin[-32] + lut_value_bin[-30] + lut_value_bin[-28] + lut_value_bin[-26] + lut_value_bin[-24] + lut_value_bin[-22] + lut_value_bin[-20] + lut_value_bin[-18] + lut_value_bin[-16] + lut_value_bin[-14]+ lut_value_bin[-12] + lut_value_bin[-10] + lut_value_bin[-8] + lut_value_bin[-6] + lut_value_bin[-4] + lut_value_bin[-2]
			srl_value = int(odd_bits_bin, 2)
			output_file.write(name + '/data' + ' ' + "{:04x}".format(srl_value, 'x') + '\n')

		# Any other type of LUTRAM
		else:	
			lut = ord(ram_bel[i][0]) - ord('A')
			output_file.write(name + '/mem' + ' ' + "{:016x}".format(value[lut], 'x') + '\n')