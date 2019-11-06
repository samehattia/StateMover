#!/usr/bin/env python3

import sys
import os.path
import re
from collections import defaultdict

from logic_location import parse_logic_location_file
from ram_location import parse_ram_location_file

from file_parser import parse_bit_file
from file_parser import parse_rbt_file
from register_writer import set_register_value_in_bit_file
from lram_writer import set_named_lram_value_in_bit_file
from lram_reader import get_lram_location_in_frame_data
from lram_reader import get_lram_info
from frame_parser import parse_frame_address

# Information collected from the .ll file
reg_name = {}
reg_bit_offset = []
reg_frame_address = [] 
reg_frame_offset = []
reg_slice_xy = []

bram_bit_offset = []
bram_frame_address = []
bram_frame_offset = []
bram_xy = defaultdict(list)
bram_bit = []

lram_bit_offset = []
lram_frame_address = []
lram_frame_offset = []
lram_xy = defaultdict(list)
lram_bit = []

# Information collected from the .rl file
ram_name = [] 
ram_type = [] 
ram_xy = [] 
ram_bel = []

start_byte = []

bit_frame_data = []

# First argument: logic location file, Second argument: bitstream file
if len(sys.argv) == 3:
	ll_file_name = sys.argv[1]
	rl_file_name = 0
	bit_file_name = sys.argv[2]
elif len(sys.argv) > 3:
	ll_file_name = sys.argv[1]
	rl_file_name = sys.argv[2]
	bit_file_name = sys.argv[3]
else:
	print("Expects at least three arguments: logic location file, [ram location file], bitstream file and dump file")
	exit()

# Parse the logic location file
with open(ll_file_name, 'r') as ll_file:
	parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

# Parse the ram location file
if rl_file_name:
	with open(rl_file_name, 'r') as rl_file:
		parse_ram_location_file(rl_file, ram_name, ram_type, ram_xy, ram_bel)

# Parse the bit file
with open(bit_file_name, 'rb') as bit_file:
	parse_bit_file(bit_file, bit_frame_data, start_byte, False)

# Open the binary bitstream .bit file for reading and writing to unset the masking bit
with open(bit_file_name, 'r+b') as bit_file:
	for i in range(len(ram_xy)):
		print(ram_xy[i] + ' ' + ram_bel[i])
		x = int(re.split("Y", ram_xy[i].lstrip('X'), 0)[0])
		y = int(re.split("Y", ram_xy[i].lstrip('X'), 0)[1])
		if ram_type[i] == 'RAM64M8' or ram_type[i] == 'RAM64M' or ram_type[i] == 'RAM32M16' or ram_type[i] == 'RAM32M':
			l = 'A'
		else:
			l = ram_bel[i][0]
		lram_location, lram_b = get_lram_location_in_frame_data(x, y, l, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
		bit_offset, frame_address, frame_offset = get_lram_info(x, y, l, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
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