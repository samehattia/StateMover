#!/usr/bin/env python3

import sys
import os.path
import re

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

from lram_reader import get_lram_value_from_frame_data
from lram_reader import get_lram_value_from_partial_frame_data

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

rbt_partial_frame_data = []
bit_partial_frame_data = []

partial_start_address = []
partial_word_count = []

partial_start_line = []
partial_start_byte = []

# Bitstream file name should be passed without any extensions
if len(sys.argv) > 2:
	design_name = sys.argv[1]
else:
	exit()

# Parse the logic location file
with open(design_name + '.ll', 'r') as ll_file:
	parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
	#print_logic_location_info(reg_bit_offset, reg_frame_address, reg_slice_xy, bram_bit_offset, bram_frame_address)
'''
print('List of registers:')
for name in reg_name:
	print('  ' + name)
'''
# Parse the partial bit file
#with open(design_name + '.bit', 'rb') as bit_partial_file:
#	file_parser.parse_bit_file(bit_partial_file, bit_partial_frame_data, partial_start_byte, True, partial_start_address, partial_word_count)

# Parse the readback file

if os.path.isfile(sys.argv[2]):
	with open(sys.argv[2], 'r') as rdbk_file:
		file_parser.parse_rdbk_file(rdbk_file, rdbk_frame_data)

lram_value = get_lram_value_from_frame_data(20, 240, 64, rdbk_frame_data, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
for value in lram_value:
	print('Value of LUTRAM in rdbk file: ' + hex(value))
# Printing information about a register

register_name = "inst_count/count_int_reg__0"
'''
value = get_register_value_from_partial_frame_data(register_name, 8, bit_partial_frame_data, partial_start_address[0], reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
print('Value of ' + register_name + ' in bit file: ' + bin(value))
'''
#value = get_register_value_from_frame_data(register_name, 8, rdbk_frame_data, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
#print('Value of ' + register_name + ' in rdbk file: ' + bin(value))
'''
bit_frame_data = []
start_byte = []
with open(sys.argv[2], 'rb') as bit_file:
	file_parser.parse_bit_file(bit_file, bit_frame_data, start_byte, True, partial_start_address, partial_word_count)

lram_value = get_lram_value_from_partial_frame_data(20, 240, 64, bit_frame_data, partial_start_address[0], lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
for value in lram_value:
	print('Value of LUTRAM in rdbk file: ' + hex(value))
'''	
'''
unique_xy = list((set(lram_xy)))
for i in range(len(unique_xy)):
	x = int(re.split("Y", unique_xy[i].lstrip('X'), 0)[0])
	y = int(re.split("Y", unique_xy[i].lstrip('X'), 0)[1])
	lram_value = get_lram_value_from_frame_data(x, y, 64, rdbk_frame_data, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)
	#for value in lram_value:
	#	print('Value of LUTRAM X' + str(x) + 'Y' + str(y) + ' in rdbk file: ' + bin(value))
'''	
'''
print(lram_bit_offset[512])
print(int(lram_bit_offset[512] / 32))
print(hex(lram_frame_address[512]))

bit_frame_data_lut = []
start_byte = []
with open(sys.argv[3], 'rb') as bit_file:
	file_parser.parse_bit_file(bit_file, bit_frame_data_lut, start_byte, False)

bit_frame_data_lutram = []
start_byte = []
with open(sys.argv[4], 'rb') as bit_file:
	file_parser.parse_bit_file(bit_file, bit_frame_data_lutram, start_byte, False)

for i in range(len(bit_frame_data_lut)):
	if bit_frame_data_lut[i] != bit_frame_data_lutram[i]:
		print("I=" + str(i) + " F=" + str(int(i/123)) + " W=" + str(int(i%123)) + "\t" + bin(bit_frame_data_lut[i]) + "\t\t\t\t\t" + bin(bit_frame_data_lutram[i]))
		'''
