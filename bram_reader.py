import re

from frame_parser import parse_frame_address

FRAME_LENGTH = 123
MAX_FRAMES = 32530

''' 
for a certain BRAM, return a location array which contains the word number
for each bit in this BRAM, and the bit offest in this word
'''
def get_bram_info(bram_x, bram_y, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit):

	bit_offset = [0] * 32768
	frame_address = [0] * 32768
	frame_offset = [0] * 32768

	xy = 'X' + str(bram_x) + 'Y' + str(bram_y)
	index_list = bram_xy[xy]

	for i in index_list:
		# skip parity bits
		if 'PARBIT' in bram_bit[i]:
			continue
		# get bit number
		bit = int(bram_bit[i].lstrip('BIT'))
		bit_offset[bit] = bram_bit_offset[i]
		frame_address[bit] = bram_frame_address[i]
		frame_offset[bit] = bram_frame_offset[i]

	return bit_offset, frame_address, frame_offset

def get_bram_location_in_frame_data(bram_x, bram_y, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit):

	bit_offset, frame_address, frame_offset = get_bram_info(bram_x, bram_y, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)

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

def get_bram_location_in_partial_frame_data(bram_x, bram_y, start_frame_address, word_count, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit):
	
	bit_offset, frame_address, frame_offset = get_bram_info(bram_x, bram_y, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)
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

def get_bram_value_from_frame_data(bram_x, bram_y, bram_width, frame_data, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit):	

	bram_value = []
	bram_location, bram_b = get_bram_location_in_frame_data(bram_x, bram_y, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)
	
	for i in range(int(len(bram_location)/bram_width)):
		value = 0
		
		for j in range(bram_width):
			word_location = bram_location[i * bram_width + j]
			bit_location = bram_b[i * bram_width + j]
			bit_value = (frame_data[word_location] >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		bram_value.append(value)

	return bram_value

def get_bram_value_from_frame_data_fast(bram_x, bram_y, bram_width, frame_data, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit):	

	bram_value = []
	bram_location, bram_b = get_bram_location_in_frame_data(bram_x, bram_y, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)
	
	for i in range(int(len(bram_location)/bram_width)):
		value = 0
		
		for j in range(bram_width):
			word_location = bram_location[i * bram_width + j]
			bit_location = bram_b[i * bram_width + j]
			bit_value = (int(frame_data[word_location], 2) >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		bram_value.append(value)

	return bram_value

def get_bram_value_from_partial_frame_data(bram_x, bram_y, bram_width, partial_frame_data, start_frame_address, word_count, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit):	

	bram_value = []
	bram_location, bram_b = get_bram_location_in_partial_frame_data(bram_x, bram_y, start_frame_address, word_count, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)
	
	for i in range(len(bram_location)/bram_width):
		value = 0
		
		for j in range(bram_width):
			word_location = bram_location[i * bram_width + j]
			bit_location = bram_b[i * bram_width + j]
			bit_value = (partial_frame_data[word_location] >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		bram_value.append(value)

	return bram_value