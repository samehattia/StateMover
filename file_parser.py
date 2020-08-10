import pickle
import os.path

from frame_parser import parse_frame_address
from frame_parser import parse_frame_data
from frame_parser import parse_binary_frame_data
from frame_parser import parse_configuration_information
from frame_parser import parse_binary_configuration_information

from logic_location import parse_logic_location_file
from ram_location import parse_ram_location_file

FRAME_LENGTH = 123
MAX_FRAMES = 32530

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

def parse_partial_rdbk_file_fast(rdbk_file, frame_data, start_address):
	lines = rdbk_file.readlines()

	# Can also be done using the bitoffset instead of frame index
	block, row, column, minor = parse_frame_address(start_address)
	frames_per_row = sum(XCKU040_frame_count)
	accumulated_frame_count = sum(XCKU040_frame_count[0:column])	
	full_frame_data_index =  (minor + accumulated_frame_count + frames_per_row * row)

	# Convert start_address into index
	for i in range(full_frame_data_index*FRAME_LENGTH):
		frame_data.append('00000000000000000000000000000000')

	for line in lines[10 + FRAME_LENGTH:]:
		frame_data.append(line)

def parse_rdbk_file_reverse_fast(rdbk_file, frame_data):
	hex_values = rdbk_file.readline()

	rev = {'0': '0000', '1':'1000', '2':'0100', '3':'1100', '4':'0010', '5':'1010', '6':'0110', '7':'1110', '8':'0001', '9': '1001', 'a':'0101', 'b':'1101', 'c':'0011', 'd':'1011', 'e':'0111', 'f':'1111'}

	start_index = len(hex_values) - 1 - ((10 + FRAME_LENGTH) * 8)
	for i in range(start_index, -1, -8):
		frame_data.append(rev[hex_values[i]] + rev[hex_values[i - 1]] + rev[hex_values[i - 2]] + rev[hex_values[i - 3]] + rev[hex_values[i - 4]] + rev[hex_values[i - 5]] + rev[hex_values[i - 6]] + rev[hex_values[i - 7]] + '\n')

def parse_rdbk_file_fast(rdbk_file, frame_data):
	lines = rdbk_file.readlines()

	for line in lines[10 + FRAME_LENGTH:]:
		frame_data.append(line)

def parse_rdbk_file(rdbk_file, frame_data):
	# Skip overhead words (10 words + one frame)
	for i in range(10 + FRAME_LENGTH):
		rdbk_file.readline()

	# Parse frame data, starting from address 0
	parse_frame_data(rdbk_file, 0, MAX_FRAMES * FRAME_LENGTH, frame_data)

def parse_rbd_file(rbd_file, frame_data):
	# Skip the file header
	line = rbd_file.readline()
	while line[0] != '0' and line[0] != '1':
		# Read the next line
		line = rbd_file.readline()

	# Skip overhead words (10 words + one frame)
	for i in range(10 + FRAME_LENGTH - 1):
		rbd_file.readline()

	# Parse frame data, starting from address 0
	parse_frame_data(rbd_file, 0, MAX_FRAMES * FRAME_LENGTH, frame_data)

def parse_msd_file(msd_file, mask_data):
	# Skip the file header
	line = msd_file.readline()
	while line[0] != '0' and line[0] != '1':
		# Read the next line
		line = msd_file.readline()

	# Skip overhead words (10 words + one frame)
	for i in range(10 + FRAME_LENGTH - 1):
		msd_file.readline()

	# Parse frame data, starting from address 0
	parse_frame_data(msd_file, 0, MAX_FRAMES * FRAME_LENGTH, mask_data)

def parse_rbt_file(rbt_file, frame_data, start_line, partial=False, partial_start_address=[], partial_word_count=[]):
	rbt_line_no = 0

	# Skip the file header
	line = rbt_file.readline()
	while line[0] != '0' and line[0] != '1':
		# Read the next line
		line = rbt_file.readline()
		rbt_line_no = rbt_line_no + 1

	while True:
		# Retrieve configuration information and skip to frame data
		start_address, word_count, rbt_line_no = parse_configuration_information(rbt_file, rbt_line_no)
		if word_count == -1:
			break
		start_line.append(rbt_line_no) # full or partial
		if partial:
			partial_start_address.append(start_address)
			partial_word_count.append(word_count)

		#print('rbt_file: FAR = ' + str(hex(start_address)))
		#print('rbt_file: WORD_COUNT = ' + str(word_count))
		#block, row, column, minor = parse_frame_address(start_address)
		#print ("Block = " + str(block) + " Row = " + str(row) + " Column = " + str(column) + " minor = " + str(minor)) 
		#print('line no = ' + str(rbt_line_no))

		# Parse frame data
		rbt_line_no = parse_frame_data(rbt_file, start_address, word_count, frame_data, rbt_line_no)


def parse_bit_file(bit_file, frame_data, start_byte, partial=False, partial_start_address=[], partial_word_count=[]):
	bit_byte_no = 0

	# Skip file header, stop when a Sync word AA995566 is detected
	while True:
		# Read one byte from the file
		byte = bit_file.read(1)
		bit_byte_no = bit_byte_no + 1
		if ord(byte) == 0xAA:
			byte = bit_file.read(1)
			bit_byte_no = bit_byte_no + 1
			if ord(byte) == 0x99:
				byte = bit_file.read(1)
				bit_byte_no = bit_byte_no + 1
				if ord(byte) == 0x55:
					byte = bit_file.read(1)
					bit_byte_no = bit_byte_no + 1
					if ord(byte) == 0x66:
						break

	while True:
		# Retrieve configuration information and skip to frame data
		start_address, word_count, bit_byte_no = parse_binary_configuration_information(bit_file, bit_byte_no)
		if word_count == -1:
			break
		start_byte.append(bit_byte_no)  # full or partial
		if partial:
			partial_start_address.append(start_address)
			partial_word_count.append(word_count)

		#print('bit_file: FAR = ' + str(hex(start_address)))
		#print('bit_file: WORD_COUNT = ' + str(word_count))

		# Parse frame data
		bit_byte_no = parse_binary_frame_data(bit_file, start_address, word_count, frame_data, bit_byte_no)	

def parse_partial_bit_file_to_get_start(bit_file, frame_data, start_byte, partial=False, partial_start_address=[], partial_word_count=[]):
	bit_byte_no = 0

	# Skip file header, stop when a Sync word AA995566 is detected
	while True:
		# Read one byte from the file
		byte = bit_file.read(1)
		bit_byte_no = bit_byte_no + 1
		if ord(byte) == 0xAA:
			byte = bit_file.read(1)
			bit_byte_no = bit_byte_no + 1
			if ord(byte) == 0x99:
				byte = bit_file.read(1)
				bit_byte_no = bit_byte_no + 1
				if ord(byte) == 0x55:
					byte = bit_file.read(1)
					bit_byte_no = bit_byte_no + 1
					if ord(byte) == 0x66:
						break

	# Retrieve configuration information and skip to frame data
	start_address, word_count, bit_byte_no = parse_binary_configuration_information(bit_file, bit_byte_no)

	start_byte.append(bit_byte_no)  # full or partial
	if partial:
		partial_start_address.append(start_address)
		partial_word_count.append(word_count)

def parse_full_bit_file_to_get_start(bit_file, frame_data, start_byte):
	bit_byte_no = 0

	# Skip file header, stop when a Sync word AA995566 is detected
	while True:
		# Read one byte from the file
		byte = bit_file.read(1)
		bit_byte_no = bit_byte_no + 1
		if ord(byte) == 0xAA:
			byte = bit_file.read(1)
			bit_byte_no = bit_byte_no + 1
			if ord(byte) == 0x99:
				byte = bit_file.read(1)
				bit_byte_no = bit_byte_no + 1
				if ord(byte) == 0x55:
					byte = bit_file.read(1)
					bit_byte_no = bit_byte_no + 1
					if ord(byte) == 0x66:
						break

	# Retrieve configuration information and skip to frame data
	start_address, word_count, bit_byte_no = parse_binary_configuration_information(bit_file, bit_byte_no)
	start_byte.append(bit_byte_no)

def parse_msk_file(msk_file, mask_data):
	# Skip file header, stop when a Sync word AA995566 is detected
	while True:
		# Read one byte from the file
		byte = msk_file.read(1)
		if ord(byte) == 0xAA:
			byte = msk_file.read(1)
			if ord(byte) == 0x99:
				byte = msk_file.read(1)
				if ord(byte) == 0x55:
					byte = msk_file.read(1)
					if ord(byte) == 0x66:
						break

	# Retrieve configuration information and skip to frame data
	while True:
		start_address, word_count, temp = parse_binary_configuration_information(msk_file)
		if word_count == -1:
			break
		#print('msk_file: FAR = ' + str(hex(start_address)))
		#print('msk_file: WORD_COUNT = ' + str(word_count))

		# Parse frame data
		parse_binary_frame_data(msk_file, start_address, word_count, mask_data)

def parse_location_files(ll_file_name, rl_file_name, bram_enable, task_name):

	registers_file = 'registers.pickle'
	blockrams_file = 'blockrams.pickle'
	lutrams_file = 'lutrams.pickle'
	rams_file = 'rams.pickle'

	if os.path.isfile(registers_file) and os.path.isfile(blockrams_file) and os.path.isfile(lutrams_file):
		# Load the parser output from pickle files
		infile = open(registers_file,'rb')
		registers = pickle.load(infile)
		infile.close()

		infile = open(blockrams_file,'rb')
		blockrams = pickle.load(infile)
		infile.close()

		infile = open(lutrams_file,'rb')
		lutrams = pickle.load(infile)
		infile.close()

	else:
		# Parse the logic location file
		with open(ll_file_name, 'r') as ll_file:
			registers, blockrams, lutrams = parse_logic_location_file(ll_file, bram_enable, task_name)

		# Save the parser output to pickle files
		outfile = open(registers_file,'wb')
		pickle.dump(registers,outfile)
		outfile.close()

		outfile = open(blockrams_file,'wb')
		pickle.dump(blockrams,outfile)
		outfile.close()

		outfile = open(lutrams_file,'wb')
		pickle.dump(lutrams,outfile)
		outfile.close()

	if os.path.isfile(rams_file):
		# Load the parser output from pickle files
		infile = open(rams_file,'rb')
		rams = pickle.load(infile)
		infile.close()

	else:
		# Parse the ram location file
		if rl_file_name:
			with open(rl_file_name, 'r') as rl_file:
				rams = parse_ram_location_file(rl_file, True, task_name)

		# Save the parser output to pickle files
		outfile = open(rams_file,'wb')
		pickle.dump(rams,outfile)
		outfile.close()

	return registers, blockrams, lutrams, rams