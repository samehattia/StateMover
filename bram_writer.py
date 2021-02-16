from frame_parser import parse_frame_address
from bram_reader import get_bram_location_in_frame_data
from bram_reader import get_bram_reg_location_in_frame_data
import re

def set_bram_value_in_bit_file(blockrams, bram_x, bram_y, bram_18, bram_p, bram_width, bram_value, bit_file, start_byte, start_word_index=0, clb_words=0):

	word_index, bit_index = get_bram_location_in_frame_data(blockrams, bram_x, bram_y, bram_18, bram_p, start_word_index, clb_words)

	# Loop on the bits of the bram
	for i in range(int(len(word_index)/bram_width)):

		for j in range(bram_width):
			# Calculate the word offset inside the file in bytes (skipping the header bytes)
			# In case of a partial bit file, start_byte is calculated from the start of the BRAM region, while the bram_location is calculated for all frame data
			# Thus the number of CLB words has to be subtracted
			word_offset = (start_byte) + ((word_index[i * bram_width + j] - clb_words) * 4)

			# Jump to this word and read it
			bit_file.seek(word_offset)
			word = bytearray(bit_file.read(4))

			# Get the byte we need to modify
			byte_offset = (3 - (bit_index[i * bram_width + j] >> 3))
			byte = word[byte_offset]

			# Bit manipulate that byte
			bit_value = (bram_value[i] >> j) & 0x1 
			if bit_value == 0:
				byte = byte & ~(1 << (bit_index[i * bram_width + j] % 8))
			else:
				byte = byte | (1 << (bit_index[i * bram_width + j] % 8))
			word[byte_offset] = byte

			# Overwrite the word after the modification
			bit_file.seek(word_offset)
			bit_file.write(bytes(word))

def set_named_bram_value_in_bit_file(blockrams, rams, bram_name, bram_value, bit_file, start_byte, start_word_index=0, clb_words=0):

	# Get info about the bram from its name
	if bram_name[-1] == 'p': # /memp
		bram_p = True
	else:
		bram_p = False
	bram_name_stripped = bram_name[:bram_name.rfind('/')]
	ram_info = rams[bram_name_stripped]
	bram_type = ram_info.ram_type
	xy = ram_info.ram_xy
	bram_bel = ram_info.ram_bel
	if bram_type == 'RAMB18E2':
		bram_18 = True
	else:
		bram_18 = False

	# Get the location of this bram in the bitstream file
	x = int(re.split("Y", xy.lstrip('X'), 0)[0])
	y = int(re.split("Y", xy.lstrip('X'), 0)[1])

	word_index, bit_index = get_bram_location_in_frame_data(blockrams, x, y, bram_18, bram_p, start_word_index, clb_words)

	# Instead of editing in place of each BRAM bit, we read, modify and then write back the entire region that contains BRAM data
	min_word_index = min(word_index)
	words_to_read = max(word_index) - min_word_index + 1

	# Calculate the word offset inside the file in bytes (skipping the header bytes)
	# In case of a partial bit file, start_byte is calculated from the start of the BRAM region, while the bram_location is calculated for all frame data
	# Thus the number of CLB words has to be subtracted
	min_word_offset = (start_byte) + ((min_word_index - clb_words) * 4)
	
	# Jump to this word and read the words that contains the contents of this BRAM (i.e. (127 frames * 123 words) + 10 words)
	bit_file.seek(min_word_offset)
	bram_bytes = bytearray(bit_file.read(words_to_read * 4))

	# Loop on the bits of the bram
	for i in range(len(word_index)):
		# Get the location of the byte we need to modify
		word_offset = (word_index[i] - min_word_index) * 4
		byte_offset = word_offset + (3 - (bit_index[i] >> 3))

		# Bit manipulate that byte
		bit_value = (int(bram_value[-(i >> 2) - 1], 16) >> (i % 4)) & 0x1 # bit_value = (int(bram_value, 16) >> i) & 0x1 
		if bit_value == 0:
			bram_bytes[byte_offset] = bram_bytes[byte_offset] & ~(1 << (bit_index[i] % 8))
		else:
			bram_bytes[byte_offset] = bram_bytes[byte_offset] | (1 << (bit_index[i] % 8))
	
	# Overwrite the entire words after the modification
	bit_file.seek(min_word_offset)
	bit_file.write(bytes(bram_bytes))

def set_named_bram_reg_value_in_bit_file(blockrams, rams, bram_reg_name, bram_reg_value, bit_file, start_byte):
	
	# Get info about the bram from its name
	if 'memp_' in bram_reg_name:
		bram_p = True
	else:
		bram_p = False
	bram_name_stripped = bram_reg_name[:bram_reg_name.rfind('/')]
	ram_info = rams[bram_name_stripped]
	bram_type = ram_info.ram_type
	xy = ram_info.ram_xy
	bram_bel = ram_info.ram_bel

	if '_b_lat' in bram_reg_name:
		bram_reg_l = 'b'
	else:
		bram_reg_l = 'a'	

	# Get the location of this lram in the partial bitstream file
	x = int(re.split("Y", xy.lstrip('X'), 0)[0])
	y = int(re.split("Y", xy.lstrip('X'), 0)[1])

	word_index, bit_index = get_bram_reg_location_in_frame_data(x, y, bram_p, bram_bel, bram_reg_l)

	# Set mem_b_lat value
	for i in range(len(word_index)):
		# Calculate the word offset inside the file in bytes (skipping the header bytes)
		word_offset = (start_byte) + (word_index[i] * 4)

		# Jump to this word and read it
		bit_file.seek(word_offset)
		word = bytearray(bit_file.read(4))

		# Get the byte we need to modify
		byte_offset = (3 - (bit_index[i] >> 3))
		byte = word[byte_offset]

		# Bit manipulate that byte
		bit_value = (bram_reg_value >> i) & 0x1 
		if bit_value == 0:
			byte = byte & ~(1 << (bit_index[i] % 8))
		else:
			byte = byte | (1 << (bit_index[i] % 8))
		word[byte_offset] = byte

		# Overwrite the word after the modification
		bit_file.seek(word_offset)
		bit_file.write(bytes(word))
