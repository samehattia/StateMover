#!/usr/bin/env python3

'''
The script sets the replay flags to the given value
'''

import sys
import os.path
import fileinput

# First argument: state file, Second argument: value
if len(sys.argv) == 3:
	file_name = sys.argv[1]
	value = sys.argv[2]
else:
	print("Expects two arguments")
	exit()

for line in fileinput.input(file_name, inplace = 1):
	# Set replay flags
	if 'replay_flag' in line:
		words = line.split()
		print(words[0] + ' ' + value)
	else:
		print(line.rstrip('\n'))

