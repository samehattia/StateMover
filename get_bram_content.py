#!/usr/bin/env python3

import sys
import re
import os.path

from logic_location import parse_logic_location_file
from ram_location import parse_ram_location_file

from file_parser import parse_rdbk_file
from register_reader import get_register_value_from_frame_data
from lram_reader import get_lram_value_from_frame_data
from bram_reader import get_bram_value_from_frame_data

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
if len(sys.argv) == 5:
	ll_file_name = sys.argv[1]
	rdbk_file_name = sys.argv[2]
	bram_x = sys.argv[3]
	bram_y = sys.argv[4]
else:
	print("Expects at least four arguments: logic location file, [ram location file], readback file, bram_x, bram_y")
	exit()

# Parse the logic location file
with open(ll_file_name, 'r') as ll_file:
	parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

# Parse the readback file
with open(rdbk_file_name, 'r') as rdbk_file:
	parse_rdbk_file(rdbk_file, rdbk_frame_data)

# Dump state elements values
bram_value = get_bram_value_from_frame_data(bram_x, bram_y, 256, rdbk_frame_data, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)

for value in bram_value:
	print(hex(value))
