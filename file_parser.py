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

def parse_partial_rdbk_file_fast(rdbk_file, start_address):
	# Convert start_address into index
	# Can also be done using the bitoffset instead of frame index
	block, row, column, minor = parse_frame_address(start_address)
	frames_per_row = sum(XCKU040_frame_count)
	accumulated_frame_count = sum(XCKU040_frame_count[0:column])	
	full_frame_data_index =  (minor + accumulated_frame_count + frames_per_row * row)

	frame_data = ['00000000000000000000000000000000']*(full_frame_data_index*FRAME_LENGTH)

	parse_rdbk_file_fast(rdbk_file, frame_data)

	return frame_data

def parse_partial_rdbk_file_reverse_fast(rdbk_file, start_address):
	# Convert start_address into index
	# Can also be done using the bitoffset instead of frame index
	block, row, column, minor = parse_frame_address(start_address)
	frames_per_row = sum(XCKU040_frame_count)
	accumulated_frame_count = sum(XCKU040_frame_count[0:column])	
	full_frame_data_index =  (minor + accumulated_frame_count + frames_per_row * row)

	frame_data = ['00000000000000000000000000000000']*(full_frame_data_index*FRAME_LENGTH)

	parse_rdbk_file_reverse_fast(rdbk_file, frame_data)

	return frame_data

'''
def parse_rdbk_file_reverse_fast(rdbk_file, frame_data):
	hex_values = rdbk_file.readline()

	rev = {'0': '0000', '1':'1000', '2':'0100', '3':'1100', '4':'0010', '5':'1010', '6':'0110', '7':'1110', '8':'0001', '9': '1001', 'a':'0101', 'b':'1101', 'c':'0011', 'd':'1011', 'e':'0111', 'f':'1111'}

	start_index = len(hex_values) - 1 - ((10 + FRAME_LENGTH) * 8)
	for i in range(start_index, -1, -8):
		frame_data.append(rev[hex_values[i]] + rev[hex_values[i - 1]] + rev[hex_values[i - 2]] + rev[hex_values[i - 3]] + rev[hex_values[i - 4]] + rev[hex_values[i - 5]] + rev[hex_values[i - 6]] + rev[hex_values[i - 7]] + '\n')
'''

def parse_rdbk_file_reverse_fast(rdbk_file, frame_data):
	hex_values = rdbk_file.readline()
	bin_values = bytearray.fromhex(hex_values)

	bin_values = bytearray(bin_values)
	bin_values.reverse()

	LUT_BIN = ['00000000', '10000000', '01000000', '11000000', '00100000', '10100000', '01100000', '11100000', '00010000', '10010000', '01010000', '11010000', '00110000', '10110000', '01110000', '11110000', '00001000', '10001000', '01001000', '11001000', '00101000', '10101000', '01101000', '11101000', '00011000', '10011000', '01011000', '11011000', '00111000', '10111000', '01111000', '11111000', '00000100', '10000100', '01000100', '11000100', '00100100', '10100100', '01100100', '11100100', '00010100', '10010100', '01010100', '11010100', '00110100', '10110100', '01110100', '11110100', '00001100', '10001100', '01001100', '11001100', '00101100', '10101100', '01101100', '11101100', '00011100', '10011100', '01011100', '11011100', '00111100', '10111100', '01111100', '11111100', '00000010', '10000010', '01000010', '11000010', '00100010', '10100010', '01100010', '11100010', '00010010', '10010010', '01010010', '11010010', '00110010', '10110010', '01110010', '11110010', '00001010', '10001010', '01001010', '11001010', '00101010', '10101010', '01101010', '11101010', '00011010', '10011010', '01011010', '11011010', '00111010', '10111010', '01111010', '11111010', '00000110', '10000110', '01000110', '11000110', '00100110', '10100110', '01100110', '11100110', '00010110', '10010110', '01010110', '11010110', '00110110', '10110110', '01110110', '11110110', '00001110', '10001110', '01001110', '11001110', '00101110', '10101110', '01101110', '11101110', '00011110', '10011110', '01011110', '11011110', '00111110', '10111110', '01111110', '11111110', '00000001', '10000001', '01000001', '11000001', '00100001', '10100001', '01100001', '11100001', '00010001', '10010001', '01010001', '11010001', '00110001', '10110001', '01110001', '11110001', '00001001', '10001001', '01001001', '11001001', '00101001', '10101001', '01101001', '11101001', '00011001', '10011001', '01011001', '11011001', '00111001', '10111001', '01111001', '11111001', '00000101', '10000101', '01000101', '11000101', '00100101', '10100101', '01100101', '11100101', '00010101', '10010101', '01010101', '11010101', '00110101', '10110101', '01110101', '11110101', '00001101', '10001101', '01001101', '11001101', '00101101', '10101101', '01101101', '11101101', '00011101', '10011101', '01011101', '11011101', '00111101', '10111101', '01111101', '11111101', '00000011', '10000011', '01000011', '11000011', '00100011', '10100011', '01100011', '11100011', '00010011', '10010011', '01010011', '11010011', '00110011', '10110011', '01110011', '11110011', '00001011', '10001011', '01001011', '11001011', '00101011', '10101011', '01101011', '11101011', '00011011', '10011011', '01011011', '11011011', '00111011', '10111011', '01111011', '11111011', '00000111', '10000111', '01000111', '11000111', '00100111', '10100111', '01100111', '11100111', '00010111', '10010111', '01010111', '11010111', '00110111', '10110111', '01110111', '11110111', '00001111', '10001111', '01001111', '11001111', '00101111', '10101111', '01101111', '11101111', '00011111', '10011111', '01011111', '11011111', '00111111', '10111111', '01111111', '11111111']

	start_index = (10 + FRAME_LENGTH) * 4
	for i in range(start_index, len(bin_values), 4):
		frame_data.append(LUT_BIN[bin_values[i]] + LUT_BIN[bin_values[i+1]] + LUT_BIN[bin_values[i+2]] + LUT_BIN[bin_values[i+3]] + '\n')

def parse_rdbk_file_reverse(rdbk_file, frame_data):
	hex_values = rdbk_file.readline()
	bin_values = bytearray.fromhex(hex_values)

	bin_values = bytearray(bin_values)
	bin_values.reverse()

	LUT_INT = [0, 128, 64, 192, 32, 160, 96, 224, 16, 144, 80, 208, 48, 176, 112, 240, 8, 136, 72, 200, 40, 168, 104, 232, 24, 152, 88, 216, 56, 184, 120, 248, 4, 132, 68, 196, 36, 164, 100, 228, 20, 148, 84, 212, 52, 180,116, 244, 12, 140, 76, 204, 44, 172, 108, 236, 28, 156, 92, 220, 60, 188, 124, 252, 2, 130, 66, 194, 34, 162, 98, 226, 18, 146, 82, 210, 50, 178, 114, 242, 10, 138, 74, 202, 42, 170, 106, 234, 26, 154, 90, 218, 58, 186, 122, 250, 6, 134, 70, 198, 38, 166, 102, 230, 22, 150, 86, 214, 54, 182, 118, 246, 14, 142, 78, 206, 46, 174, 110, 238, 30, 158, 94, 222, 62, 190, 126, 254, 1, 129, 65, 193, 33, 161, 97, 225, 17, 145, 81, 209, 49, 177, 113, 241, 9, 137, 73, 201, 41, 169, 105, 233, 25, 153, 89, 217, 57, 185, 121, 249, 5, 133, 69, 197, 37, 165, 101, 229, 21, 149, 85, 213, 53, 181, 117, 245, 13, 141, 77, 205, 45, 173, 109, 237, 29, 157, 93, 221, 61, 189, 125, 253, 3, 131, 67, 195, 35, 163, 99, 227, 19, 147, 83, 211, 51, 179, 115, 243, 11, 139, 75, 203, 43, 171, 107, 235, 27, 155, 91, 219, 59, 187, 123, 251, 7, 135, 71, 199, 39, 167, 103, 231, 23, 151, 87, 215, 55, 183, 119, 247, 15, 143, 79, 207, 47, 175, 111, 239, 31, 159, 95, 223, 63, 191, 127, 255]

	start_index = (10 + FRAME_LENGTH) * 4
	for i in range(start_index, len(bin_values), 4):
		frame_data.append((LUT_INT[bin_values[i]] << 24) + (LUT_INT[bin_values[i+1]] << 16) + (LUT_INT[bin_values[i+2]] << 8) + (LUT_INT[bin_values[i+3]])) 

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
			
		else:
			rams = {}

	# If the design doesn't have any RAM, set bram_enable to false to speedup the parsing of ll file
	if not rams:
		bram_enable = False

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

	return registers, blockrams, lutrams, rams
