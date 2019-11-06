#!/usr/bin/env python3

import sys
import os.path
from collections import defaultdict
from timeit import default_timer as timer

from logic_location import parse_logic_location_file
from ram_location import parse_ram_location_file

from file_parser import parse_bit_file
from file_parser import parse_partial_bit_file_to_get_start
from file_parser import parse_rbt_file
from register_writer import set_register_value_in_partial_bit_file
from lram_writer import set_named_lram_value_in_partial_bit_file
from lram_reader import get_lram_location_in_partial_frame_data

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

partial_start_address = []
partial_word_count = []
partial_start_byte = []

bit_partial_frame_data = []

# First argument: logic location file, Second argument: bitstream file, Third argument: dump file
if len(sys.argv) == 4:
	ll_file_name = sys.argv[1]
	rl_file_name = 0
	bit_partial_file_name = sys.argv[2]
	dump_file_name = sys.argv[3] #"sim_state.dump"
elif len(sys.argv) > 4:
	ll_file_name = sys.argv[1]
	rl_file_name = sys.argv[2]
	bit_partial_file_name = sys.argv[3]
	dump_file_name = sys.argv[4] #"sim_state.dump"
else:
	print("Expects at least three arguments: logic location file, [ram location file], bitstream file and dump file")
	exit()

start = timer()
# Parse the logic location file
with open(ll_file_name, 'r') as ll_file:
	parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

# Parse the ram location file
if rl_file_name:
	with open(rl_file_name, 'r') as rl_file:
		parse_ram_location_file(rl_file, ram_name, ram_type, ram_xy, ram_bel)

# Parse the partial bit file
with open(bit_partial_file_name, 'rb') as bit_partial_file:
	parse_partial_bit_file_to_get_start(bit_partial_file, bit_partial_frame_data, partial_start_byte, True, partial_start_address, partial_word_count)

with open(dump_file_name, 'r') as input_file:
	data = input_file.readlines()
	for line in data:
		words = line.split()

		# Check if the line is related to a register or a lutram
		if len(words[1]) == 1:
			set_register_value_in_partial_bit_file(words[0], 1, int(words[1]), bit_partial_file_name, partial_start_address[0], partial_start_byte[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)

		else:
			set_named_lram_value_in_partial_bit_file(words[0], int(words[1], 16), bit_partial_file_name, partial_start_address[0], partial_start_byte[0], lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit, ram_name, ram_type, ram_xy, ram_bel)
'''
# Open the binary partial bitstream .bit file for reading and writing
with open(bit_partial_file_name, 'r+b') as bit_partial_file:
	bit_partial_file.seek(partial_start_byte[0])
	for word in bit_partial_frame_data:
		bit_partial_file.write(word.to_bytes(4, byteorder='big'))
'''
end = timer()
print(end - start)