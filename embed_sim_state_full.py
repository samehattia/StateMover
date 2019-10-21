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

# First argument: logic location file, Second argument: bitstream file, Third argument: dump file
if len(sys.argv) == 4:
	ll_file_name = sys.argv[1]
	rl_file_name = 0
	bit_file_name = sys.argv[2]
	dump_file_name = sys.argv[3] #"sim_state.dump"
elif len(sys.argv) > 4:
	ll_file_name = sys.argv[1]
	rl_file_name = sys.argv[2]
	bit_file_name = sys.argv[3]
	dump_file_name = sys.argv[4] #"sim_state.dump"
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

with open(dump_file_name, 'r') as input_file:
	data = input_file.readlines()
	for line in data:
		words = line.split()

		# Check if the line is related to a register or a lutram
		if len(words[1]) == 1:
			set_register_value_in_bit_file(words[0], 1, int(words[1]), bit_file_name, start_byte[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)

		else:
			set_named_lram_value_in_bit_file(words[0], int(words[1], 16), bit_file_name, start_byte[0], lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit, ram_name, ram_type, ram_xy, ram_bel)