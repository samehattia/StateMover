#!/usr/bin/env python3

import sys
import os.path
from timeit import default_timer as timer

from file_parser import parse_location_files

from file_parser import parse_bit_file
from file_parser import parse_rbt_file

from file_parser import parse_partial_bit_file_to_get_start
from file_parser import parse_full_bit_file_to_get_start

from register_writer import set_register_value_in_partial_bit_file
from lram_writer import set_named_lram_value_in_partial_bit_file
from lram_reader import get_lram_location_in_partial_frame_data

from register_writer import set_register_value_in_bit_file
from lram_writer import set_named_lram_value_in_bit_file
from lram_reader import get_lram_location_in_frame_data
from bram_writer import set_named_bram_value_in_bit_file
from bram_writer import set_named_bram_reg_value_in_bit_file

# Parse command line arguments into program arguments and options
opts = [opt for opt in sys.argv[1:] if opt.startswith("-")]
args = [arg for arg in sys.argv[1:] if not arg.startswith("-")]

# Expected arguments: logic location file, [ram location file], bitstream file, dump file
if len(args) == 3:
	ll_file_name = args[0]
	rl_file_name = 0
	bit_file_name = args[1]
	dump_file_name = args[2]
elif len(args) == 4:
	ll_file_name = args[0]
	rl_file_name = args[1]
	bit_file_name = args[2]
	dump_file_name = args[3]
else:
	print("Expects at least three arguments: logic location file, [ram location file], bitstream file and dump file")
	exit()

# Expected options: -partial_bitstream
bram_enable = True
PARTIAL = False
if '-partial_bitstream' in opts:
	PARTIAL = True
if '-no_bram' in opts:
	bram_enable = False

start = timer()

registers, blockrams, lutrams, rams = parse_location_files(ll_file_name, rl_file_name, bram_enable, '')

if not PARTIAL:
	start_byte = []

	bit_frame_data = []

	# Parse the bit file
	with open(bit_file_name, 'rb') as bit_file:
		parse_full_bit_file_to_get_start(bit_file, bit_frame_data, start_byte)

	with open(dump_file_name, 'r') as input_file:
		data = input_file.readlines()
		for line in data:
			words = line.split()

			# Check if the line is related to a register, a bram, a bram reg or a lutram
			if len(words[1]) == 1:
				set_register_value_in_bit_file(words[0], 1, int(words[1]), bit_file_name, start_byte[0], registers)

			elif len(words[1]) > 64:
				set_named_bram_value_in_bit_file(words[0], int(words[1], 16), bit_file_name, start_byte[0], blockrams, rams)

			elif (len(words[1]) == 8 or len(words[1]) == 4) and ('mem_b_lat' in words[0] or 'mem_a_lat' in words[0]):
				set_named_bram_reg_value_in_bit_file(words[0], int(words[1], 16), bit_file_name, start_byte[0], blockrams, rams)

			else:
				set_named_lram_value_in_bit_file(words[0], int(words[1], 16), bit_file_name, start_byte[0], lutrams, rams)

elif PARTIAL:
	partial_start_address = []
	partial_word_count = []
	partial_start_byte = []

	bit_partial_frame_data = []

	# Parse the partial bit file
	with open(bit_file_name, 'rb') as bit_partial_file:
		parse_partial_bit_file_to_get_start(bit_partial_file, bit_partial_frame_data, partial_start_byte, True, partial_start_address, partial_word_count)

	with open(dump_file_name, 'r') as input_file:
		data = input_file.readlines()
		for line in data:
			words = line.split()

			# Check if the line is related to a register or a lutram
			if len(words[1]) == 1:
				set_register_value_in_partial_bit_file(words[0], 1, int(words[1]), bit_file_name, partial_start_address[0], partial_start_byte[0], registers)

			else:
				set_named_lram_value_in_partial_bit_file(words[0], int(words[1], 16), bit_file_name, partial_start_address[0], partial_start_byte[0], lutrams, rams)
	'''
	# Open the binary partial bitstream .bit file for reading and writing
	with open(bit_file_name, 'r+b') as bit_partial_file:
		bit_partial_file.seek(partial_start_byte[0])
		for word in bit_partial_frame_data:
			bit_partial_file.write(word.to_bytes(4, byteorder='big'))
	'''

end = timer()
print(end - start)
