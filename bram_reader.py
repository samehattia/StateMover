import re

from frame_parser import parse_frame_address

FRAME_LENGTH = 123
CLB_FRAMES = 26120

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
def get_bram_info(blockrams, bram_x, bram_y, bram_p):

	if bram_p:
		bram_id = 'X' + str(bram_x) + 'Y' + str(bram_y) + 'P'
	else:
		bram_id = 'X' + str(bram_x) + 'Y' + str(bram_y)
	return blockrams[bram_id].bit_offset

def get_bram_location_in_frame_data(blockrams, bram_x, bram_y, bram_p, start_word_index=0, clb_words=0):

	bit_offset = get_bram_info(blockrams, bram_x, bram_y, bram_p)

	word_index = [0] * len(bit_offset)
	bit_index = [0] * len(bit_offset)

	for i in range(len(bit_offset)):
		if start_word_index == 0 and clb_words == 0:
			word_index[i] = (bit_offset[i] >> 5)
		else:
			# The word_index for patial bitstreams is calculated as follows
			# bit_offset >> 5 is the word_index in full frame data
			# Subtract from it the number of CLB words in full frame data
			# To get the word index calculated from the start of the BRAM region in full frame data 
			# Subtract start_word_index which the word_index of the first BRAM frame in the partial bitstream
			# Then add the number of CLB words in the partial bitstream
			# To get the word index calculated from the start of partial frame data
			word_index[i] = clb_words + (bit_offset[i] >> 5) - (CLB_FRAMES * FRAME_LENGTH) - start_word_index
		bit_index[i] = bit_offset[i] % 32

	return word_index, bit_index

def get_bram_value_from_frame_data(blockrams, bram_x, bram_y, bram_p, bram_width, frame_data, start_word_index=0, clb_words=0, fast=False):	

	bram_value = []
	bram_word_index, bram_bit_index = get_bram_location_in_frame_data(blockrams, bram_x, bram_y, bram_p, start_word_index, clb_words)
	
	for i in range(int(len(bram_word_index)/bram_width)):
		value = 0
		
		for j in range(bram_width):
			word_index = bram_word_index[i * bram_width + j]
			bit_index = bram_bit_index[i * bram_width + j]
			if fast:
				bit_value = (int(frame_data[word_index], 2) >> bit_index) & 0x1
			else:
				bit_value = (frame_data[word_index] >> bit_index) & 0x1
			value = value | (bit_value << j)
		
		bram_value.append(value)

	return bram_value

def get_bram_reg_location_in_frame_data(bram_x, bram_y, bram_p, bram_bel, bram_reg_l):

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

	# FIXME: correctly map init_a and init_b to mem_a_lat, mem_b_lat, memp_a_lat and memp_b_lat according to RAMB18E2.v and RAMB36E2.v (Check vivado 19.2)
	# I noticed that (sometimes?) to get the full width of mem_a_lat or memp_a_lat as in simulation, both a and b bits should be combined {init_b, init_a}
	# For example: In a RAM18 design, memp_a_lat = 8 (four bits) in simulation, but we generate memp_a_lat = 0, and memp_b_lat = 2
	# and mem_a_lat = 0000d0b0 in simulation, but we generate mem_a_lat = d0b0, and mem_b_lat = 0000
	if bram_p and 'RAMB18' in bram_bel:
		if bram_bel[-1] == 'L':
			location = [location[8], location[26]]  
			bit = [bit[8], bit[26]]
		else:
			location = [location[17], location[35]]
			bit = [bit[17], bit[35]]
	elif bram_p:
		location = location[32:36]
		bit = bit[32:36]
	elif 'RAMB18' in bram_bel:
		if bram_bel[-1] == 'L':
			location = [location[0], location[2], location[4], location[6], location[9], location[11], location[13], location[15], location[18], location[20], location[22], location[24], location[27], location[29], location[31], location[33]]
			bit = [bit[0], bit[2], bit[4], bit[6], bit[9], bit[11], bit[13], bit[15], bit[18], bit[20], bit[22], bit[24], bit[27], bit[29], bit[31], bit[33]]
		else:
			location = [location[1], location[3], location[5], location[7], location[10], location[12], location[14], location[16], location[19], location[21], location[23], location[25], location[28], location[30], location[32], location[34]]
			bit = [bit[1], bit[3], bit[5], bit[7], bit[10], bit[12], bit[14], bit[16], bit[19], bit[21], bit[23], bit[25], bit[28], bit[30], bit[32], bit[34]]
	else:
		location = location[0:32]
		bit = bit[0:32]

	return location, bit

def get_bram_reg_value_from_frame_data(bram_x, bram_y, bram_p, bram_bel, bram_reg_l, frame_data, fast=False):

	bram_reg_value = []
	bram_reg_location, bram_reg_b = get_bram_reg_location_in_frame_data(bram_x, bram_y, bram_p, bram_bel, bram_reg_l)

	value = 0

	# Get mem_b_lat value
	for j in range(len(bram_reg_location)):
		word_location = bram_reg_location[j]
		bit_location = bram_reg_b[j]
		if fast:
			bit_value = (int(frame_data[word_location], 2) >> bit_location) & 0x1
		else:
			bit_value = (frame_data[word_location] >> bit_location) & 0x1
		value = value | (bit_value << j)

	bram_reg_value.append(value)

	return bram_reg_value