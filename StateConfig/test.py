#!/usr/bin/env python3

import sys
import os.path

from logic_location import parse_logic_location_file
from logic_location import print_logic_location_info

import frame_parser
import file_parser

from register_reader import get_register_info
from register_reader import print_register_info
from register_reader import get_register_location_in_frame_data
from register_reader import get_register_location_in_partial_frame_data
from register_reader import get_register_value_from_frame_data
from register_reader import get_register_value_from_partial_frame_data

from register_writer import set_register_value_in_partial_rbt_file
from register_writer import set_register_value_in_partial_bit_file

from bram_reader import get_bram_info
from bram_reader import get_bram_location_in_frame_data
from bram_reader import get_bram_location_in_partial_frame_data
from bram_reader import get_bram_value_from_frame_data
from bram_reader import get_bram_value_from_partial_frame_data

from bram_writer import set_bram_value_in_partial_bit_file

from frame_verifier import compare_partial_and_full_frame_data

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

rdbk_frame_data = []

msd_frame_data = []
msk_frame_data = []

rbd_frame_data = []
bit_frame_data = []
rbt_frame_data = []

rbt_partial_frame_data = []
bit_partial_frame_data = []

partial_start_address = []
partial_word_count = []

partial_start_line = []
full_start_line = []

partial_start_byte = []
full_start_byte = []


# Bitstream file name should be passed without any extensions
if len(sys.argv) > 1:
	design_name = sys.argv[1]
else:
	exit()

# Parse the logic location file
with open(design_name + '.ll', 'r') as ll_file:
	parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
	#print_logic_location_info(reg_bit_offset, reg_frame_address, reg_slice_xy, bram_bit_offset, bram_frame_address)

# Parse the readback file
if os.path.isfile(design_name + '.rdbk'):
	with open(sys.argv[1] + '.rdbk', 'r') as rdbk_file:
		file_parser.parse_rdbk_file(rdbk_file, rdbk_frame_data)

# Parse the rbd file
with open(design_name + '.rbd', 'r') as rbd_file:
	file_parser.parse_rbd_file(rbd_file, rbd_frame_data)

# Parse the msd file
with open(design_name + '.msd', 'r') as msd_file:
	file_parser.parse_msd_file(msd_file, msd_frame_data)

# Parse the rbt file
with open(design_name + '.rbt', 'r') as rbt_file:
	file_parser.parse_rbt_file(rbt_file, rbt_frame_data, full_start_line)

# Parse the msk file (binary file)
with open(design_name + '.msk', 'rb') as msk_file:
	file_parser.parse_msk_file(msk_file, msk_frame_data)

# Parse the bit file (binary file)
with open(design_name + '.bit', 'rb') as bit_file:
	file_parser.parse_bit_file(bit_file, bit_frame_data, full_start_byte)

# Compare frame data
if rbt_frame_data == bit_frame_data:
	print("rbt and bit file frame data matches")
if rbd_frame_data == bit_frame_data:
	print("rbd and bit file frame data matches")

# Compare mask data
if msd_frame_data == msk_frame_data:
	print("msd and msk file frame data matches")

if len(sys.argv) > 2:
	partial_design_name = sys.argv[2]
else:
	exit()

# Parse the partial rbt file
with open(partial_design_name + '.rbt', 'r') as rbt_partial_file:
	file_parser.parse_rbt_file(rbt_partial_file, rbt_partial_frame_data, partial_start_line, True, partial_start_address, partial_word_count)

# Parse the partial bit file
with open(partial_design_name + '.bit', 'rb') as bit_partial_file:
	file_parser.parse_bit_file(bit_partial_file, bit_partial_frame_data, partial_start_byte)

# Compare partial frame data
if rbt_partial_frame_data == bit_partial_frame_data:
	print("rbt and bit partial file frame data matches")

compare_partial_and_full_frame_data(partial_start_address[0], partial_word_count[0], rbt_frame_data, rbt_partial_frame_data)

# Printing information about a register
register_name = "inst_count/count_int_reg__0[0]"
print_register_info(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
location_full, bit_full = get_register_location_in_frame_data(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
location_partial, bit_partial = get_register_location_in_partial_frame_data(register_name, partial_start_address[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
print("location in full bitstream = " + str(location_full + full_start_line[0] + 2) + ", " + str(bit_full))
print("location in partial bitstream = " + str(location_partial + partial_start_line[0] + 2) + ", " + str(bit_partial))

register_name = "inst_count/count_int_reg__0"
value = get_register_value_from_frame_data(register_name, 8, rbt_frame_data, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
print(bin(value))
value = get_register_value_from_partial_frame_data(register_name, 8, rbt_partial_frame_data, partial_start_address[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
print(bin(value))
value = get_register_value_from_partial_frame_data(register_name, 8, bit_partial_frame_data, partial_start_address[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
print(bin(value))


value = 0xF0
set_register_value_in_partial_rbt_file(register_name, 8, value, partial_design_name, partial_start_address[0], partial_start_line[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)

# Reparse the partial rbt file
new_rbt_partial_frame_data = []
with open(partial_design_name + '.rbt', 'r') as rbt_partial_file:
	file_parser.parse_rbt_file(rbt_partial_file, new_rbt_partial_frame_data, partial_start_line, True, partial_start_address, partial_word_count)

value = get_register_value_from_partial_frame_data(register_name, 8, new_rbt_partial_frame_data, partial_start_address[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
print(bin(value))


value = 0xF0
set_register_value_in_partial_bit_file(register_name, 8, value, partial_design_name, partial_start_address[0], partial_start_byte[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)

# Reparse the partial bit file
new_bit_partial_frame_data = []
with open(partial_design_name + '.bit', 'rb') as bit_partial_file:
	file_parser.parse_bit_file(bit_partial_file, new_bit_partial_frame_data, partial_start_byte)

value = get_register_value_from_partial_frame_data(register_name, 8, new_bit_partial_frame_data, partial_start_address[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
print(bin(value))

bram_location, bram_b = get_bram_location_in_frame_data(2, 48, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)
bram_value = get_bram_value_from_frame_data(2, 48, 256, rbt_frame_data, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)

for value in bram_value:
	print hex(value)

bram_location_partial, bram_bit_partial = get_bram_location_in_partial_frame_data(2, 48, partial_start_address, partial_word_count, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)
bram_value = get_bram_value_from_partial_frame_data(2, 48, 32, rbt_partial_frame_data, partial_start_address, partial_word_count, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)

for value in bram_value:
	print hex(value)

new_bram_value = [0x1100] * 1024 # 0x1100 is 0x50 and 0x5500 is 0xF0; drop odd bits;
set_bram_value_in_partial_bit_file(2, 48, 32, new_bram_value, partial_design_name, partial_start_address, partial_word_count, partial_start_byte, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit);

# Reparse the partial bit file
new_bit_partial_frame_data = []
with open(partial_design_name + '.bit', 'rb') as bit_partial_file:
	file_parser.parse_bit_file(bit_partial_file, new_bit_partial_frame_data, partial_start_byte)

bram_value = get_bram_value_from_partial_frame_data(2, 48, 32, new_bit_partial_frame_data, partial_start_address, partial_word_count, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)

for value in bram_value:
	print hex(value)

print(len(bram_value))	
