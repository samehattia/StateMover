
''' 
for a certain LUTRAM, return a location array which contains the word number
for each bit in this LUTRAM, and the bit offest in this word
Each LUTRAM consists of 8 LUTs [A-H], each of them is 64 bits
'''
def get_lram_info(lutrams, lram_x, lram_y, lram_l):

	lram_id = 'X' + str(lram_x) + 'Y' + str(lram_y) + 'L' + lram_l
	lram_loc_info = lutrams[lram_id]

	bit_offset = lram_loc_info.bit_offset
	frame_address = lram_loc_info.frame_address
	frame_offset =  lram_loc_info.frame_offset

	return bit_offset, frame_address, frame_offset

def get_lram_location_in_frame_data(lutrams, lram_x, lram_y, lram_l, start_word_index=0):

	bit_offset, frame_address, frame_offset = get_lram_info(lutrams, lram_x, lram_y, lram_l)

	word_index = [0] * 64
	bit_index = [0] * 64

	for i in range(len(bit_offset)):
		word_index[i] = (bit_offset[i] >> 5) - start_word_index
		bit_index[i] = bit_offset[i] % 32

	return word_index, bit_index

def get_lram_value_from_frame_data(lutrams, lram_x, lram_y, lram_l, lram_width, frame_data, start_word_index=0, fast=False):	

	lram_value = []
	lram_word_index, lram_bit_index = get_lram_location_in_frame_data(lutrams, lram_x, lram_y, lram_l, start_word_index)

	for i in range(int(len(lram_word_index)/lram_width)):
		value = 0
		
		for j in range(lram_width):
			word_index = lram_word_index[i * lram_width + j]
			bit_index = lram_bit_index[i * lram_width + j]
			if fast:
				bit_value = (int(frame_data[word_index], 2) >> bit_index) & 0x1
			else:
				bit_value = (frame_data[word_index] >> bit_index) & 0x1
			value = value | (bit_value << j)
		
		lram_value.append(value)

	return lram_value
