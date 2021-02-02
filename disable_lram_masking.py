#!/usr/bin/env python3

import sys
import os.path
import re
from collections import defaultdict

from file_parser import parse_location_files

from file_parser import parse_bit_file
from file_parser import parse_rbt_file
from register_writer import set_register_value_in_bit_file
from lram_writer import set_named_lram_value_in_bit_file
from lram_reader import get_lram_location_in_frame_data
from lram_reader import get_lram_info
from frame_parser import parse_frame_address

start_byte = []
bit_frame_data = []

# Parse command line arguments into program arguments and options
opts = [opt for opt in sys.argv[1:] if opt.startswith("-")]
args = [arg for arg in sys.argv[1:] if not arg.startswith("-")]

# First argument: logic location file, Second argument: bitstream file
if len(args) == 3:
	ll_file_name = args[0]
	rl_file_name = args[1]
	bit_file_name = args[2]
	task_name = ''
elif len(args) == 4:
	ll_file_name = args[0]
	rl_file_name = args[1]
	bit_file_name = args[2]
	task_name = args[3]
else:
	print("Expects at least three arguments: logic location file, ram location file, bitstream file and [task_name]")
	exit()

# Expected options: -partial_bitstream
bram_enable = True
if '-no_bram' in opts:
	bram_enable = False

registers, blockrams, lutrams, rams = parse_location_files(ll_file_name, rl_file_name, bram_enable, task_name, True)

# Parse the bit file
with open(bit_file_name, 'rb') as bit_file:
	parse_bit_file(bit_file, bit_frame_data, start_byte, False)

# Open the binary bitstream .bit file for reading and writing to unset the masking bit
with open(bit_file_name, 'r+b') as bit_file:
	for name, ram_info in rams.items():
		ram_type = ram_info.ram_type
		ram_xy = ram_info.ram_xy
		ram_bel = ram_info.ram_bel

		if ram_type == 'RAMB36E2' or ram_type == 'RAMB18E2':
			continue

		x = int(re.split("Y", ram_xy.lstrip('X'), 0)[0])
		y = int(re.split("Y", ram_xy.lstrip('X'), 0)[1])

		if ram_type == 'RAM64M8' or ram_type == 'RAM64M' or ram_type == 'RAM32M16':
			l = 'A'
		elif ram_type == 'RAM32M':
			if ram_bel[0] == 'H':
				l = 'E'
			else:
				l = 'A'
		else:
			l = ram_bel[0]

		lram_location, lram_b = get_lram_location_in_frame_data(lutrams, x, y, l)
		
		lram_id = 'X' + str(x) + 'Y' + str(y) + 'L' + l
		frame_address = lutrams[lram_id].frame_address

		block, row, column, minor = parse_frame_address(min(frame_address))
		print('minor= ' + str(minor))

		lram_min_location = min(lram_location)

		# Calculate the word offset inside the file in bytes (skipping the header bytes) (should be minor 7)
		word_offset = (start_byte[0]) + ((lram_min_location + (7 - minor) * 123) * 4)
		# The contents of LUTRAM located in bel E-H is in the second word of the two words that contain LUTRAM contents
		# The bit we want to turn off is offseted from the first word, so subtract one word
		if l > 'D':
			word_offset = word_offset - 4 

		# Jump to this word and read it
		bit_file.seek(word_offset)
		word = bytearray(bit_file.read(4))

		# Get the byte we need to modify
		byte_offset = (3 - int(12 / 8))
		byte = word[byte_offset]
		print(byte)

		# Bit manipulate that byte
		byte = byte & ~(1 << 4)
		word[byte_offset] = byte
		print(byte)

		# Overwrite the word after the modification
		bit_file.seek(word_offset)
		bit_file.write(bytes(word))

'''
# Open the binary partial bitstream .bit file for reading and writing to unset the masking bit
with open(bit_partial_file_name, 'r+b') as partial_file:
	lram_location, lram_b = get_lram_location_in_partial_frame_data(20, 240, partial_start_address[0], lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

	lram_min_location = min(lram_location)
	print(lram_min_location)
	# Calculate the word offset inside the file in bytes (skipping the header bytes)
	word_offset = (partial_start_byte[0]) + ((lram_min_location + 7 * 123) * 4)
	# Jump to this word and read it
	partial_file.seek(word_offset)
	word = bytearray(partial_file.read(4))
	# Get the byte we need to modify
	byte_offset = (3 - int(12 / 8))
	byte = word[byte_offset]
	print(byte)
'''
'''
# Open the binary partial clear bitstream .bit file for reading and writing to unset the masking bit
start_address = []
word_count = []
start_line = []
frame_data = []
with open(sys.argv[5], 'r') as partial_file:
	parse_rbt_file(partial_file, frame_data, start_line, True, start_address, word_count)
	lram_location, lram_b = get_lram_location_in_partial_frame_data(20, 240, start_address[0], lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
	lram_min_location = min(lram_location)
	line_partial = lram_min_location + start_line[0] + 1 + 7 * 123
	print(line_partial)

start_address = []
word_count = []
start_line = []
frame_data = []
with open(sys.argv[6], 'r') as partial_file:
	parse_rbt_file(partial_file, frame_data, start_line, True, start_address, word_count)
	line_partial = start_line[15] + 1 + 1 * 123
	print(line_partial)	
'''
'''
	lram_min_location = min(lram_location)
	print(lram_min_location)
	# Calculate the word offset inside the file in bytes (skipping the header bytes)
	word_offset = (partialc_start_byte[15]) + ((1 * 123) * 4)
	# Jump to this word and read it
	partial_file.seek(word_offset)
	word = bytearray(partial_file.read(4))
	# Get the byte we need to modify
	byte_offset = (3 - int(12 / 8))
	byte = word[byte_offset]
	print(byte)
'''	