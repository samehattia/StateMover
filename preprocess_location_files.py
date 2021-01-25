#!/usr/bin/env python3

import sys
import re
import os.path

from file_parser import parse_location_files
from frame_parser import parse_frame_address

FRAME_LENGTH = 123

# Number of minor frames at each column in XCKU040
XCKU040_frame_count = [84, 0, 0, 12, 12, 58, 12, 58, 4, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 58, 
	4, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 12, 58, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 58, 4, 
	12, 12, 58, 6, 12, 58, 12, 12, 58, 12, 58, 4, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 58, 4, 12, 
	12, 58, 4, 12, 58, 12, 12, 58, 12, 12, 58, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 58, 4, 12, 12, 
	58, 6, 84, 0, 0, 12, 12, 58, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 12, 58, 4, 12, 58, 12, 58, 
	4, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 12, 58, 4, 12, 58, 
	12, 58, 4, 12, 12, 58, 6, 12, 58, 12, 12, 58, 4, 12, 58, 12, 12, 58, 4, 12, 58, 12, 12, 58, 12, 
	58, 4, 12, 12, 58, 66, 0, 0, 12, 12, 58, 12, 58, 4, 12, 12, 58, 12, 12, 58, 12, 12, 58, 12, 12, 
	58, 12, 12, 58, 14]

# Parse command line arguments into program arguments and options
opts = [opt for opt in sys.argv[1:] if opt.startswith("-")]
args = [arg for arg in sys.argv[1:] if not arg.startswith("-")]

# Expected arguments: logic location file, [ram location file], [task name]
if len(args) == 1:
	ll_file_name = args[0]
	rl_file_name = 0
	task_name = ''
elif len(args) == 2:
	ll_file_name = args[0]
	rl_file_name = args[1]
	task_name = ''
elif len(args) == 3:
	ll_file_name = args[0]
	rl_file_name = args[1]
	task_name = args[2]
else:
	print("Expects at least one argument: logic location file, [ram location file] and [task name]")
	exit()

# Expected options: -no_bram
bram_enable = True
if '-no_bram' in opts:
	bram_enable = False

# Parse logic location and ram location files
registers, blockrams, lutrams, rams = parse_location_files(ll_file_name, rl_file_name, bram_enable, task_name)

# Calculate start address and frame count for partial readback
min_frame_address = min(registers.values(), key=lambda x: x.frame_address).frame_address
max_frame_address = max(registers.values(), key=lambda x: x.frame_address).frame_address

if lutrams:
	min_lram_frame_address = min(lutrams.values(), key=lambda x: x.frame_address).frame_address
	max_lram_frame_address = max(lutrams.values(), key=lambda x: x.frame_address).frame_address

	if min_lram_frame_address < min_frame_address:
		min_frame_address = min_lram_frame_address
	
	if max_lram_frame_address > max_frame_address:
		max_frame_address = max_lram_frame_address


# Convert frame address into frame index
frames_per_row = sum(XCKU040_frame_count)

block, row, column, minor = parse_frame_address(min_frame_address)
accumulated_frame_count = sum(XCKU040_frame_count[0:column])	
min_frame_index =  (minor + accumulated_frame_count + frames_per_row * row)

block, row, column, minor = parse_frame_address(max_frame_address)
accumulated_frame_count = sum(XCKU040_frame_count[0:column])	
max_frame_index =  (minor + accumulated_frame_count + frames_per_row * row)

frame_count = max_frame_index - min_frame_index

# Print start address and frame count
print(frame_count + 2)
print(min_frame_address)

