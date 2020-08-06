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

''' 
for a certain LUTRAM, return a location array which contains the word number
for each bit in this LUTRAM, and the bit offest in this word
Each LUTRAM consists of 8 LUTs [A-H], each of them is 64 bits
'''
def get_lram_info(lram_x, lram_y, lram_l, lutrams):

	bit_offset = [0] * 64
	frame_address = [0] * 64
	frame_offset = [0] * 64

	# loop on all the lram frame data
	xy = 'X' + str(lram_x) + 'Y' + str(lram_y) + 'L' + lram_l
	lram_loc_info_list = lutrams[xy]

	for lram_loc_info in lram_loc_info_list:
		# get bit number
		bit = int(lram_loc_info.bit)
		bit_offset[bit] = lram_loc_info.bit_offset
		frame_address[bit] = lram_loc_info.frame_address
		frame_offset[bit] = lram_loc_info.frame_offset
	'''
	for i in range(len(lram_xy)):
		#x = int(re.split("Y", lram_xy[i].lstrip('X'), 0)[0])
		#y = int(re.split("Y", lram_xy[i].lstrip('X'), 0)[1])

		# Check if this data is related to this certain lram
		#if lram_x == x and lram_y == y:
		if xy == lram_xy[i]:
			# Do the following for the next 8 * 64 then break
			
			for j in range(8*64):
				if i+j >= len(lram_xy) or xy != lram_xy[i+j]:
					break
				# get bit number
				lut = ord(re.split(":", lram_bit[i+j], 0)[0]) - ord('A')
				bit = int(re.split(":", lram_bit[i+j], 0)[1])
				bit_offset[lut * 64 + bit] = lram_bit_offset[i+j]
				frame_address[lut * 64 + bit] = lram_frame_address[i+j]
				frame_offset[lut * 64 + bit] = lram_frame_offset[i+j]
			break
	'''
	return bit_offset, frame_address, frame_offset

def get_lram_location_in_frame_data(lram_x, lram_y, lram_l, lutrams):

	bit_offset, frame_address, frame_offset = get_lram_info(lram_x, lram_y, lram_l, lutrams)

	location = [0] * 64
	bit = [0] * 64

	for i in range(len(bit_offset)):
		location[i] = int(bit_offset[i] / 32)
		bit[i] = bit_offset[i] % 32

	return location, bit

def get_lram_location_in_partial_frame_data(lram_x, lram_y, lram_l, start_frame_address, lutrams):
	
	bit_offset, frame_address, frame_offset = get_lram_info(lram_x, lram_y, lram_l, lutrams)

	location = [0] * 64
	bit = [0] * 64

	frames_per_row = sum(XCKU040_frame_count)
	
	s_block, s_row, s_column, s_minor = parse_frame_address(start_frame_address)

	s_accumulated_frame_count = sum(XCKU040_frame_count[0:s_column])
	s_full_frame_data_index =  (s_minor + s_accumulated_frame_count + frames_per_row * s_row) * FRAME_LENGTH

	for i in range(len(frame_address)):
		block, row, column, minor = parse_frame_address(frame_address[i])
		
		accumulated_frame_count = sum(XCKU040_frame_count[0:column])
		full_frame_data_index =  (minor + accumulated_frame_count + frames_per_row * row) * FRAME_LENGTH

		location[i] = (full_frame_data_index - s_full_frame_data_index) + int(frame_offset[i] / 32)
		bit[i] = frame_offset[i] % 32

	return location, bit

def get_lram_value_from_frame_data_fast(lram_x, lram_y, lram_l, lram_width, frame_data, lutrams):	

	lram_value = []
	lram_location, lram_b = get_lram_location_in_frame_data(lram_x, lram_y, lram_l, lutrams)

	for i in range(int(len(lram_location)/lram_width)):
		value = 0
		
		for j in range(lram_width):
			word_location = lram_location[i * lram_width + j]
			bit_location = lram_b[i * lram_width + j]
			bit_value = (int(frame_data[word_location], 2) >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		lram_value.append(value)

	return lram_value

def get_lram_value_from_frame_data(lram_x, lram_y, lram_l, lram_width, frame_data, lutrams):	

	lram_value = []
	lram_location, lram_b = get_lram_location_in_frame_data(lram_x, lram_y, lram_l, lutrams)

	for i in range(int(len(lram_location)/lram_width)):
		value = 0
		
		for j in range(lram_width):
			word_location = lram_location[i * lram_width + j]
			bit_location = lram_b[i * lram_width + j]
			bit_value = (frame_data[word_location] >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		lram_value.append(value)

	return lram_value

def get_lram_value_from_partial_frame_data(lram_x, lram_y, lram_l, lram_width, partial_frame_data, start_frame_address, lutrams):	

	lram_value = []
	lram_location, lram_b = get_lram_location_in_partial_frame_data(lram_x, lram_y, lram_l, start_frame_address, lutrams)
	
	for i in range(int(len(lram_location)/lram_width)):
		value = 0
		
		for j in range(lram_width):
			word_location = lram_location[i * lram_width + j]
			bit_location = lram_b[i * lram_width + j]
			bit_value = (partial_frame_data[word_location] >> bit_location) & 0x1
			value = value | (bit_value << j)
		
		lram_value.append(value)

	return lram_value
