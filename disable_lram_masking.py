#!/usr/bin/env python3

import sys
import os.path

from logic_location import parse_logic_location_file
from ram_location import parse_ram_location_file

from file_parser import parse_bit_file
from file_parser import parse_rbt_file
from register_writer import set_register_value_in_bit_file
from lram_writer import set_named_lram_value_in_bit_file
from lram_reader import get_lram_location_in_frame_data

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

# Parse the bit file
with open(bit_file_name, 'rb') as bit_file:
	parse_bit_file(bit_file, bit_frame_data, start_byte, False)

# Open the binary bitstream .bit file for reading and writing to unset the masking bit
with open(sys.argv[5], 'r+b') as partial_file:
	start_byte = []
	bit_frame_data = []
	parse_bit_file(partial_file, bit_partial_frame_data, start_byte, False)
	#lram_location, lram_b = get_lram_location_in_partial_frame_data(20, 240, partial_start_address[0], lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
	lram_location, lram_b = get_lram_location_in_frame_data(20, 240, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

	lram_min_location = min(lram_location)
	print(lram_min_location)
	# Calculate the word offset inside the file in bytes (skipping the header bytes)
	word_offset = (start_byte[0]) + ((lram_min_location + 7 * 123) * 4)
	# Jump to this word and read it
	partial_file.seek(word_offset)
	word = bytearray(partial_file.read(4))
	# Get the byte we need to modify
	byte_offset = (3 - int(12 / 8))
	byte = word[byte_offset]
	print(byte)			
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