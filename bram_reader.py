import re

from frame_parser import parse_frame_address

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

# Which frame column has BRAM configuration (not BRAM contents)
XCKU040_bram_columns = [7, 19, 43, 55, 67, 91, 119, 146, 170, 182]

''' 
for a certain BRAM, return a location array which contains the word number
for each bit in this BRAM, and the bit offest in this word
'''
def get_bram_info(bram_x, bram_y, blockrams):

	bram_id = 'X' + str(bram_x) + 'Y' + str(bram_y)
	bram_loc_info = blockrams[bram_id]

	bit_offset = bram_loc_info.bit_offset
	frame_address = bram_loc_info.frame_address
	frame_offset =  bram_loc_info.frame_offset

	return bit_offset, frame_address, frame_offset

def get_bram_location_in_frame_data(bram_x, bram_y, blockrams):

	bit_offset, frame_address, frame_offset = get_bram_info(bram_x, bram_y, blockrams)

	location = [0] * 32768
	bit = [0] * 32768

	for i in range(len(bit_offset)):
		location[i] = int(bit_offset[i] / 32)
		bit[i] = bit_offset[i] % 32

	# print information about the distrubtion of the bram content in the 128 frames
	'''
	prev_f = 0
	prev_u = 0
	for i in range(min(location), max(location) + 1):
		if i in location:
			if prev_f == i - 1:
				prev_f = i
			else:
				print('S Frame index ' + str(int(i / FRAME_LENGTH)) + " Word offset " + str(int(i % FRAME_LENGTH))) 
				prev_f = i
		else:
			if prev_u == i - 1:
				prev_u = i
			else:
				print('E Frame index ' + str(int(i / FRAME_LENGTH) - 1) + " Word offset " + str(int(i % FRAME_LENGTH) - 1)) 
				prev_u = i	
	print('E Frame index ' + str(int(prev_f / FRAME_LENGTH)) + " Word offset " + str(int(prev_f % FRAME_LENGTH)))
	'''
	return location, bit

def get_bram_location_in_partial_frame_data(bram_x, bram_y, start_frame_address, word_count, blockrams):
	
	bit_offset, frame_address, frame_offset = get_bram_info(bram_x, bram_y, blockrams)
	start_word = 0

	for i in range(len(start_frame_address)):
		s_block, s_row, s_column, s_minor = parse_frame_address(start_frame_address[i])
		# Bram Frames found
		if (s_block == 1):
			break
		# skip clb frame words
		start_word = start_word + word_count[i]

	location = [0] * 32768
	bit = [0] * 32768

	for i in range(len(frame_address)):
		block, row, column, minor = parse_frame_address(frame_address[i])

		frames_per_row = 128 * 10 + 2

		full_frame_data_index = (minor + 128 * column + frames_per_row * row) * FRAME_LENGTH

		s_full_frame_data_index = (s_minor + 128 * s_column  + frames_per_row * s_row) * FRAME_LENGTH

		location[i] = start_word + (full_frame_data_index - s_full_frame_data_index) + int(frame_offset[i] / 32)
		bit[i] = frame_offset[i] % 32

	return location, bit

def get_bram_value_from_frame_data(bram_x, bram_y, bram_width, frame_data, blockrams):	

	bram_value = []
	bram_location, bram_b = get_bram_location_in_frame_data(bram_x, bram_y, blockrams)
	
	for i in range(int(len(bram_location)/bram_width)):
		value = 0
		
		for j in range(bram_width):
			word_location = bram_location[i * bram_width + j]
			bit_location = bram_b[i * bram_width + j]
			bit_value = (frame_data[word_location] >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		bram_value.append(value)

	return bram_value

def get_bram_value_from_frame_data_fast(bram_x, bram_y, bram_width, frame_data, blockrams):	

	bram_value = []
	bram_location, bram_b = get_bram_location_in_frame_data(bram_x, bram_y, blockrams)
	
	for i in range(int(len(bram_location)/bram_width)):
		value = 0
		
		for j in range(bram_width):
			word_location = bram_location[i * bram_width + j]
			bit_location = bram_b[i * bram_width + j]
			bit_value = (int(frame_data[word_location], 2) >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		bram_value.append(value)

	return bram_value

def get_bram_value_from_partial_frame_data(bram_x, bram_y, bram_width, partial_frame_data, start_frame_address, word_count, blockrams):	

	bram_value = []
	bram_location, bram_b = get_bram_location_in_partial_frame_data(bram_x, bram_y, start_frame_address, word_count, blockrams)
	
	for i in range(len(bram_location)/bram_width):
		value = 0
		
		for j in range(bram_width):
			word_location = bram_location[i * bram_width + j]
			bit_location = bram_b[i * bram_width + j]
			bit_value = (partial_frame_data[word_location] >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		bram_value.append(value)

	return bram_value

def get_bram_reg_location_in_frame_data(bram_x, bram_y, bram_bel, bram_reg_l):

	location = [0] * 36
	bit = [0] * 36

	if 'RAMB18' in bram_bel:
		bram_y = int(bram_y/2) 

	# Calculate bram init frame index
	# Convert BRAM_XY to Frame slot (Column and Row)
	# In XCKU040, there are 10 BRAM columns, and each slot has 12 BRAMs
	column = XCKU040_bram_columns[bram_x]
	row = int(bram_y / 12)

	# Get the frame index of that slot
	# A slot has multiple frames. A bram configuration slot has 4 frames
	# The information of the BRAM registers is in the frame with minor 3 in that slot
	minor = 3
	frames_per_row = sum(XCKU040_frame_count)
	accumulated_frame_count = sum(XCKU040_frame_count[0:column])	
	bram_reg_frame_index =  (minor + accumulated_frame_count + frames_per_row * row)

	# Reverse engineered info about the word and bit offest of the BRAM regs (INITA/INITB) inside that frame
	# The word offset of the first BRAM in the slot
	bram_reg_word_offset_0 = [0, 5, 0, 6,    1, 6, 1, 7,    2, 2, 8, 3,    8, 3, 9, 4,    9, 7, 0, 5,    0, 6, 1, 6,    1, 7, 2, 2,    8, 3, 8, 3,    9, 4, 9, 7]
	init_a_bit_offset =  [1, 17, 17, 1,    1, 17, 17, 1,    1, 17, 1, 1,    17, 17, 1, 1,    17, 17,  9, 25,    25,  9,  9, 25,    25,  9,  9, 25,     9,  9, 25, 25,     9,  9, 25, 25]
	init_b_bit_offset =  [7, 23, 23, 7,    7, 23, 23, 7,    7, 23, 7, 7,    23, 23, 7, 7,    23, 23, 15, 31,    31, 15, 15, 31,    31, 15, 15, 31,    15, 15, 31, 31,    15, 15, 31, 31]

	# Get mem_b_lat location
	for i in range(36):
		# The word offset of other BRAMs is BRAM0: 0-9 BRAM1: 10-19 ... BRAM5: 50-59 BRAM6: 63-72 ... BRAM11: 103-112 BRAM12: 113-122
		bram_reg_word_offset = bram_reg_word_offset_0[i] + ((bram_y % 12) * 10)
		if (bram_y % 12) > 5:
			bram_reg_word_offset = bram_reg_word_offset + 3
		location[i] = bram_reg_frame_index * 123 + bram_reg_word_offset
		if bram_reg_l == 'a':
			bit[i] = init_a_bit_offset[i]
		else:
			bit[i] = init_b_bit_offset[i]

	if  'RAMB18' in bram_bel:
		if bram_bel[-1] == 'L':
			location = [location[0], location[2], location[4], location[6], location[9], location[11], location[13], location[15], location[8], location[18], location[20], location[22], location[24], location[27], location[29], location[31]]
			bit = [bit[0], bit[2], bit[4], bit[6], bit[9], bit[11], bit[13], bit[15], bit[8], bit[18], bit[20], bit[22], bit[24], bit[27], bit[29], bit[31]]
		else:
			location = [location[1], location[3], location[5], location[7], location[10], location[12], location[14], location[16], location[17], location[19], location[21], location[23], location[25], location[28], location[30], location[32]]
			bit = [bit[1], bit[3], bit[5], bit[7], bit[10], bit[12], bit[14], bit[16], bit[17], bit[19], bit[21], bit[23], bit[25], bit[28], bit[30], bit[32]]
	else:
		location = location[0:32]
		bit = bit[0:32]

	return location, bit

def get_bram_reg_value_from_frame_data_fast(bram_x, bram_y, bram_bel, bram_reg_l, frame_data):

	bram_reg_value = []
	bram_reg_location, bram_reg_b = get_bram_reg_location_in_frame_data(bram_x, bram_y, bram_bel, bram_reg_l)

	value = 0

	# Get mem_b_lat value
	for j in range(len(bram_reg_location)):
		word_location = bram_reg_location[j]
		bit_location = bram_reg_b[j]
		bit_value = (int(frame_data[word_location], 2) >> bit_location) & 0x1
		value = value | (bit_value << j)

	bram_reg_value.append(value)

	return bram_reg_value

def get_bram_reg_value_from_frame_data(bram_x, bram_y, bram_bel, bram_reg_l, frame_data):

	bram_reg_value = []
	bram_reg_location, bram_reg_b = get_bram_reg_location_in_frame_data(bram_x, bram_y, bram_bel, bram_reg_l)

	value = 0

	# Get mem_b_lat value
	for j in range(len(bram_reg_location)):
		word_location = bram_reg_location[j]
		bit_location = bram_reg_b[j]
		bit_value = (frame_data[word_location] >> bit_location) & 0x1
		value = value | (bit_value << j)

	bram_reg_value.append(value)

	return bram_reg_value
