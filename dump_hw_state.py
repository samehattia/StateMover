#!/usr/bin/env python3

import sys
import re
import os.path
from timeit import default_timer as timer

from file_parser import parse_location_files

# Fast means that the frame data is in string format (not converted to int)
from file_parser import parse_rdbk_file_fast
from file_parser import parse_partial_rdbk_file_fast

from register_reader import get_register_value_from_frame_data_fast
from lram_reader import get_lram_value_from_frame_data_fast
from bram_reader import get_bram_value_from_frame_data_fast
from bram_reader import get_bram_reg_value_from_frame_data_fast

from file_parser import parse_rdbk_file
from file_parser import parse_bit_file

from register_reader import get_register_value_from_frame_data
from lram_reader import get_lram_value_from_frame_data
from bram_reader import get_bram_value_from_frame_data
from bram_reader import get_bram_reg_value_from_frame_data

# Parse command line arguments into program arguments and options
opts = [opt for opt in sys.argv[1:] if opt.startswith("-")]
args = [arg for arg in sys.argv[1:] if not arg.startswith("-")]

# Expected arguments: logic location file, [ram location file], readback file/bit file, [task name]
if len(args) == 2:
	ll_file_name = args[0]
	rl_file_name = 0
	rdbk_file_name = args[1]
	task_name = ''
elif len(args) == 3:
	ll_file_name = args[0]
	rl_file_name = args[1]
	rdbk_file_name = args[2]
	task_name = ''
elif len(args) == 4:
	ll_file_name = args[0]
	rl_file_name = args[1]
	rdbk_file_name = args[2]
	task_name = args[3]
else:
	print("Expects at least two arguments: logic location file, [ram location file], readback file and [task name]")
	exit()

# Expected options: -no_bram, -partial_readback, -bit_file
bram_enable = True
PARTIAL = False
BITFILE = False
if '-no_bram' in opts:
	bram_enable = False
if '-partial_readback' in opts:
	PARTIAL = True
if '-bit_file' in opts:
	BITFILE = True

start = timer()

registers, blockrams, lutrams, rams = parse_location_files(ll_file_name, rl_file_name, bram_enable, task_name)

if not BITFILE:
	rdbk_frame_data = []

	if not PARTIAL:
		# Parse the readback file
		with open(rdbk_file_name, 'r') as rdbk_file:
			parse_rdbk_file_fast(rdbk_file, rdbk_frame_data)

	elif PARTIAL:
		min_reg_frame_address = min(registers.values(), key=lambda x: x.frame_address).frame_address
		block, row, column, minor = parse_frame_address(min_reg_frame_address)
		print(hex(min_reg_frame_address))
		print(str(block) + ' ' + str(row) + ' ' + str(column) + ' ' + str(minor))

		max_reg_frame_address = max(registers.values(), key=lambda x: x.frame_address).frame_address
		block, row, column, minor = parse_frame_address(max_reg_frame_address)
		print(hex(max_reg_frame_address))
		print(str(block) + ' ' + str(row) + ' ' + str(column) + ' ' + str(minor))

		min_lram_frame_address = min(lutrams.values(), key=lambda x: x.frame_address).frame_address
		block, row, column, minor = parse_frame_address(min_lram_frame_address)
		print(hex(min_lram_frame_address))
		print(str(block) + ' ' + str(row) + ' ' + str(column) + ' ' + str(minor))

		max_lram_frame_address = max(lutrams.values(), key=lambda x: x.frame_address).frame_address
		block, row, column, minor = parse_frame_address(max_lram_frame_address)
		print(hex(max_lram_frame_address))
		print(str(block) + ' ' + str(row) + ' ' + str(column) + ' ' + str(minor))

		# Parse the readback file
		with open(rdbk_file_name, 'r') as rdbk_file:
			parse_partial_rdbk_file_fast(rdbk_file, rdbk_frame_data, min_reg_frame_address)

	# Dump state elements values
	with open("hw_state.dump", 'w') as output_file:
		# Dump register values
		for name in registers:
			value = get_register_value_from_frame_data_fast(name, 1, rdbk_frame_data, registers)
			output_file.write(name + ' ' + str(value) + '\n')

		# Dump ram values
		for name, ram_info in rams.items():
			ram_type = ram_info.ram_type
			ram_xy = ram_info.ram_xy
			ram_bel = ram_info.ram_bel

			x = int(re.split("Y", ram_xy.lstrip('X'), 0)[0])
			y = int(re.split("Y", ram_xy.lstrip('X'), 0)[1])

			# Check if the RAM occupies the 8 LUTs and has a depth of 64
			if ram_type == 'RAM64M8' or ram_type == 'RAM64M':
				for j in range(8):
					value = get_lram_value_from_frame_data_fast(x, y, chr(ord('A') + j), 64, rdbk_frame_data, lutrams)
					output_file.write(name + '/mem_' + chr(ord('a') + j) + ' ' + "{:016x}".format(value[0], 'x') + '\n')

			# Check if the RAM occupies the 8 LUTs and has a depth of 32
			elif ram_type == 'RAM32M16' or ram_type == 'RAM32M':
				for j in range(8):
					value = get_lram_value_from_frame_data_fast(x, y, chr(ord('A') + j), 64, rdbk_frame_data, lutrams)
					# The value of an RAM32M is constructed from one bit from the least 32 bits then one bit from th most 32 bits and so on
					lut_value = value[0]
					lut_value_bin = "{:064b}".format(lut_value, 'b')
					lutram_value_bin = lut_value_bin[-64] + lut_value_bin[-32] + lut_value_bin[-63] + lut_value_bin[-31] + lut_value_bin[-62] + lut_value_bin[-30] + lut_value_bin[-61] + lut_value_bin[-29] + lut_value_bin[-60] + lut_value_bin[-28]+ lut_value_bin[-59] + lut_value_bin[-27] + lut_value_bin[-58] + lut_value_bin[-26] + lut_value_bin[-57] + lut_value_bin[-25] + lut_value_bin[-56] + lut_value_bin[-24] + lut_value_bin[-55] + lut_value_bin[-23] + lut_value_bin[-54] + lut_value_bin[-22] + lut_value_bin[-53] + lut_value_bin[-21] + lut_value_bin[-52] + lut_value_bin[-20]+ lut_value_bin[-51] + lut_value_bin[-19] + lut_value_bin[-50] + lut_value_bin[-18] + lut_value_bin[-49] + lut_value_bin[-17] + lut_value_bin[-48] + lut_value_bin[-16] + lut_value_bin[-47] + lut_value_bin[-15] + lut_value_bin[-46] + lut_value_bin[-14] + lut_value_bin[-45] + lut_value_bin[-13] + lut_value_bin[-44] + lut_value_bin[-12]+ lut_value_bin[-43] + lut_value_bin[-11] + lut_value_bin[-42] + lut_value_bin[-10] + lut_value_bin[-41] + lut_value_bin[-9] + lut_value_bin[-40] + lut_value_bin[-8] + lut_value_bin[-39] + lut_value_bin[-7] + lut_value_bin[-38] + lut_value_bin[-6] + lut_value_bin[-37] + lut_value_bin[-5] + lut_value_bin[-36] + lut_value_bin[-4]+ lut_value_bin[-35] + lut_value_bin[-3] + lut_value_bin[-34] + lut_value_bin[-2] + lut_value_bin[-33] + lut_value_bin[-1]
					lutram_value = int(lutram_value_bin, 2)
					output_file.write(name + '/mem_' + chr(ord('a') + j) + ' ' + "{:016x}".format(lutram_value, 'x') + '\n')

			# Check if the RAM is an SRL
			elif ram_type == 'SRL16E':
				lut = ram_bel[0]
				value = get_lram_value_from_frame_data_fast(x, y, lut, 64, rdbk_frame_data, lutrams)
				# The value of an SRL16E with bel [A-H]6LUT is in the odd bits of most 32 bits
				if ram_bel[1] == '6':
					lut_value = value[0] >> 32
				# The value of an SRL16E with bel [A-H]5LUT is in the odd bits of least 32 bits
				else:
					lut_value = value[0] 	
				# Get the odd bits
				lut_value_bin = "{:032b}".format(lut_value, 'b')
				odd_bits_bin = lut_value_bin[-32] + lut_value_bin[-30] + lut_value_bin[-28] + lut_value_bin[-26] + lut_value_bin[-24] + lut_value_bin[-22] + lut_value_bin[-20] + lut_value_bin[-18] + lut_value_bin[-16] + lut_value_bin[-14]+ lut_value_bin[-12] + lut_value_bin[-10] + lut_value_bin[-8] + lut_value_bin[-6] + lut_value_bin[-4] + lut_value_bin[-2]
				srl_value = int(odd_bits_bin, 2)
				output_file.write(name + '/data' + ' ' + "{:04x}".format(srl_value, 'x') + '\n')

			# Check if the RAM is a blockRAM
			elif ram_type == 'RAMB36E2':
				if bram_enable:
					value = get_bram_value_from_frame_data_fast(x, y, 32768, rdbk_frame_data, blockrams)
					output_file.write(name + '/mem' + ' ' + "{:08192x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data_fast(x, y, ram_bel, 'a', rdbk_frame_data)
				output_file.write(name + '/mem_a_lat' + ' ' + "{:08x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data_fast(x, y, ram_bel, 'b', rdbk_frame_data)
				output_file.write(name + '/mem_b_lat' + ' ' + "{:08x}".format(value[0], 'x') + '\n')

			elif ram_type == 'RAMB18E2':
				if bram_enable:
					value = get_bram_value_from_frame_data_fast(x, y, 16384, rdbk_frame_data, blockrams)
					output_file.write(name + '/mem' + ' ' + "{:04096x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data_fast(x, y, ram_bel, 'a', rdbk_frame_data)
				output_file.write(name + '/mem_a_lat' + ' ' + "{:04x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data_fast(x, y, ram_bel, 'b', rdbk_frame_data)
				output_file.write(name + '/mem_b_lat' + ' ' + "{:04x}".format(value[0], 'x') + '\n')

			# Check if the RAM is RAM32X1S (half width single LUTRAM)
			elif ram_type == 'RAM32X1S':
				lut = ram_bel[0]
				value = get_lram_value_from_frame_data_fast(x, y, lut, 64, rdbk_frame_data, lutrams)
				# The value of a RAM32X1S with bel [A-H]6LUT is in the most 32 bits
				if ram_bel[1] == '6':
					lut_value = value[0] >> 32
				# The value of a RAM32X1S with bel [A-H]5LUT is in the least 32 bits
				else:
					lut_value = value[0] & 0xFFFFFFFF
				output_file.write(name + '/mem' + ' ' + "{:08x}".format(lut_value, 'x') + '\n')

			# Any other type of LUTRAM
			else:	
				lut = ram_bel[0]
				value = get_lram_value_from_frame_data_fast(x, y, lut, 64, rdbk_frame_data, lutrams)
				output_file.write(name + '/mem' + ' ' + "{:016x}".format(value[0], 'x') + '\n')

elif BITFILE:
	bit_frame_data = []
	start_byte = []

	bit_file_name = rdbk_file_name

	# Parse the bit file
	with open(bit_file_name, 'rb') as bit_file:
		parse_bit_file(bit_file, bit_frame_data, start_byte, False)

	# Dump state elements values
	with open("hw_state.dump", 'w') as output_file:
		# Dump register values
		for name in registers:
			value = get_register_value_from_frame_data(name, 1, bit_frame_data, registers)
			output_file.write(name + ' ' + str(value) + '\n')

		# Dump ram values
		for name, ram_info in rams.items():
			ram_type = ram_info.ram_type
			ram_xy = ram_info.ram_xy
			ram_bel = ram_info.ram_bel

			x = int(re.split("Y", ram_xy.lstrip('X'), 0)[0])
			y = int(re.split("Y", ram_xy.lstrip('X'), 0)[1])

			# Check if the RAM occupies the 8 LUTs and has a depth of 64
			if ram_type == 'RAM64M8' or ram_type == 'RAM64M':
				for j in range(8):
					value = get_lram_value_from_frame_data(x, y, chr(ord('A') + j), 64, bit_frame_data, lutrams)
					output_file.write(name + '/mem_' + chr(ord('a') + j) + ' ' + "{:016x}".format(value[0], 'x') + '\n')

			# Check if the RAM occupies the 8 LUTs and has a depth of 32
			elif ram_type == 'RAM32M16' or ram_type == 'RAM32M':
				for j in range(8):
					value = get_lram_value_from_frame_data(x, y, chr(ord('A') + j), 64, bit_frame_data, lutrams)
					# The value of an RAM32M is constructed from one bit from the least 32 bits then one bit from th most 32 bits and so on
					lut_value = value[0]
					lut_value_bin = "{:064b}".format(lut_value, 'b')
					lutram_value_bin = lut_value_bin[-64] + lut_value_bin[-32] + lut_value_bin[-63] + lut_value_bin[-31] + lut_value_bin[-62] + lut_value_bin[-30] + lut_value_bin[-61] + lut_value_bin[-29] + lut_value_bin[-60] + lut_value_bin[-28]+ lut_value_bin[-59] + lut_value_bin[-27] + lut_value_bin[-58] + lut_value_bin[-26] + lut_value_bin[-57] + lut_value_bin[-25] + lut_value_bin[-56] + lut_value_bin[-24] + lut_value_bin[-55] + lut_value_bin[-23] + lut_value_bin[-54] + lut_value_bin[-22] + lut_value_bin[-53] + lut_value_bin[-21] + lut_value_bin[-52] + lut_value_bin[-20]+ lut_value_bin[-51] + lut_value_bin[-19] + lut_value_bin[-50] + lut_value_bin[-18] + lut_value_bin[-49] + lut_value_bin[-17] + lut_value_bin[-48] + lut_value_bin[-16] + lut_value_bin[-47] + lut_value_bin[-15] + lut_value_bin[-46] + lut_value_bin[-14] + lut_value_bin[-45] + lut_value_bin[-13] + lut_value_bin[-44] + lut_value_bin[-12]+ lut_value_bin[-43] + lut_value_bin[-11] + lut_value_bin[-42] + lut_value_bin[-10] + lut_value_bin[-41] + lut_value_bin[-9] + lut_value_bin[-40] + lut_value_bin[-8] + lut_value_bin[-39] + lut_value_bin[-7] + lut_value_bin[-38] + lut_value_bin[-6] + lut_value_bin[-37] + lut_value_bin[-5] + lut_value_bin[-36] + lut_value_bin[-4]+ lut_value_bin[-35] + lut_value_bin[-3] + lut_value_bin[-34] + lut_value_bin[-2] + lut_value_bin[-33] + lut_value_bin[-1]
					lutram_value = int(lutram_value_bin, 2)
					output_file.write(name + '/mem_' + chr(ord('a') + j) + ' ' + "{:016x}".format(lutram_value, 'x') + '\n')

			# Check if the RAM is an SRL
			elif ram_type == 'SRL16E':
				lut = ram_bel[0]
				value = get_lram_value_from_frame_data(x, y, lut, 64, bit_frame_data, lutrams)
				# The value of an SRL16E with bel [A-H]6LUT is in the odd bits of most 32 bits
				if ram_bel[1] == '6':
					lut_value = value[0] >> 32
				# The value of an SRL16E with bel [A-H]5LUT is in the odd bits of least 32 bits
				else:
					lut_value = value[0] 	
				# Get the odd bits
				lut_value_bin = "{:032b}".format(lut_value, 'b')
				odd_bits_bin = lut_value_bin[-32] + lut_value_bin[-30] + lut_value_bin[-28] + lut_value_bin[-26] + lut_value_bin[-24] + lut_value_bin[-22] + lut_value_bin[-20] + lut_value_bin[-18] + lut_value_bin[-16] + lut_value_bin[-14]+ lut_value_bin[-12] + lut_value_bin[-10] + lut_value_bin[-8] + lut_value_bin[-6] + lut_value_bin[-4] + lut_value_bin[-2]
				srl_value = int(odd_bits_bin, 2)
				output_file.write(name + '/data' + ' ' + "{:04x}".format(srl_value, 'x') + '\n')

			# Check if the RAM is a blockRAM
			elif ram_type == 'RAMB36E2':
				value = get_bram_value_from_frame_data(x, y, 32768, bit_frame_data, blockrams)
				output_file.write(name + '/mem' + ' ' + "{:08192x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data(x, y, ram_bel, 'a', bit_frame_data)
				output_file.write(name + '/mem_a_lat' + ' ' + "{:08x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data(x, y, ram_bel, 'b', bit_frame_data)
				output_file.write(name + '/mem_b_lat' + ' ' + "{:08x}".format(value[0], 'x') + '\n')

			elif ram_type == 'RAMB18E2':
				value = get_bram_value_from_frame_data(x, y, 16384, bit_frame_data, blockrams)
				output_file.write(name + '/mem' + ' ' + "{:04096x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data(x, y, ram_bel, 'a', bit_frame_data)
				output_file.write(name + '/mem_a_lat' + ' ' + "{:04x}".format(value[0], 'x') + '\n')

				value = get_bram_reg_value_from_frame_data(x, y, ram_bel, 'b', bit_frame_data)
				output_file.write(name + '/mem_b_lat' + ' ' + "{:04x}".format(value[0], 'x') + '\n')

			# Check if the RAM is RAM32X1S (half width single LUTRAM)
			elif ram_type == 'RAM32X1S':
				lut = ram_bel[0]
				value = get_lram_value_from_frame_data(x, y, lut, 64, bit_frame_data, lutrams)
				# The value of a RAM32X1S with bel [A-H]6LUT is in the most 32 bits
				if ram_bel[1] == '6':
					lut_value = value[0] >> 32
				# The value of a RAM32X1S with bel [A-H]5LUT is in the least 32 bits
				else:
					lut_value = value[0] & 0xFFFFFFFF
				output_file.write(name + '/mem' + ' ' + "{:08x}".format(lut_value, 'x') + '\n')

			# Any other type of LUTRAM
			else:	
				lut = ram_bel[0]
				value = get_lram_value_from_frame_data(x, y, lut, 64, bit_frame_data, lutrams)			
				output_file.write(name + '/mem' + ' ' + "{:016x}".format(value[0], 'x') + '\n')

end = timer()
print(end - start)