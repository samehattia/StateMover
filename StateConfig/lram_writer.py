from lram_reader import get_lram_location_in_frame_data
import re

def set_lram_value_in_bit_file(lutrams, lram_x, lram_y, lram_l, lram_width, lram_value, bit_file, start_byte, start_word_index=0):
	
	word_index, bit_index = get_lram_location_in_frame_data(lutrams, lram_x, lram_y, lram_l, start_word_index)

	# Loop on the bits of the lram
	for i in range(int(len(word_index)/lram_width)):

		for j in range(lram_width):
			# Calculate the word offset inside the file in bytes (skipping the header bytes)
			word_offset = (start_byte) + (word_index[i * lram_width + j] * 4)

			# Jump to this word and read it
			bit_file.seek(word_offset)
			word = bytearray(bit_file.read(4))

			# Get the byte we need to modify
			byte_offset = (3 - (bit_index[i * lram_width + j] >> 3))
			byte = word[byte_offset]

			# Bit manipulate that byte
			bit_value = (lram_value[i] >> j) & 0x1 
			if bit_value == 0:
				byte = byte & ~(1 << (bit_index[i * lram_width + j] % 8))
			else:
				byte = byte | (1 << (bit_index[i * lram_width + j] % 8))
			word[byte_offset] = byte

			# Overwrite the word after the modification
			bit_file.seek(word_offset)
			bit_file.write(bytes(word))

def set_named_lram_value_in_bit_file(lutrams, rams, lram_name, lram_value, bit_file, start_byte, start_word_index=0):
	
	# Get info about the lram from its name
	lram_name_stripped = lram_name[:lram_name.rfind('/')]
	ram_info = rams[lram_name_stripped]
	lram_type = ram_info.ram_type
	xy = ram_info.ram_xy
	lram_bel = ram_info.ram_bel

	# Get the location of this lram in the partial bitstream file
	x = int(re.split("Y", xy.lstrip('X'), 0)[0])
	y = int(re.split("Y", xy.lstrip('X'), 0)[1])

	# Check which LUT6 in the 8 LUTs of this lram should be updated
	if lram_type == 'RAM64M8' or lram_type == 'RAM64M' or lram_type == 'RAM32M16':
		lut = lram_name[-1]
	elif lram_type == 'RAM32M':
		if lram_bel[0] == 'H':
			lut = chr(ord(lram_name[-1]) + 4)
		else:
			lut = lram_name[-1]
	else:
		lut = lram_bel[0]
	l = lut.upper()
	word_index, bit_index = get_lram_location_in_frame_data(lutrams, x, y, l, start_word_index)

	# Check which LUT5 (the lower or the upper) of this LUT6 should be updated
	if lram_type == 'SRL16E' or lram_type == 'RAM32X1S':
		if lram_bel[1] == '5':
			word_index = word_index[0:32]
			bit_index = bit_index[0:32]
		elif lram_bel[1] == '6':
			word_index = word_index[32:]
			bit_index = bit_index[32:]

	# The value of an RAM32M is constructed from one bit from the least 32 bits then one bit from th most 32 bits and so on
	if lram_type == 'RAM32M16' or lram_type == 'RAM32M':
		lram_value_bin = "{:064b}".format(lram_value, 'b')
		lut_value_bin = lram_value_bin[-64] + lram_value_bin[-62] + lram_value_bin[-60] + lram_value_bin[-58] + lram_value_bin[-56] + lram_value_bin[-54] + lram_value_bin[-52] + lram_value_bin[-50] + lram_value_bin[-48] + lram_value_bin[-46]+ lram_value_bin[-44] + lram_value_bin[-42] + lram_value_bin[-40] + lram_value_bin[-38] + lram_value_bin[-36] + lram_value_bin[-34] + lram_value_bin[-32] + lram_value_bin[-30] + lram_value_bin[-28] + lram_value_bin[-26] + lram_value_bin[-24] + lram_value_bin[-22] + lram_value_bin[-20] + lram_value_bin[-18] + lram_value_bin[-16] + lram_value_bin[-14]+ lram_value_bin[-12] + lram_value_bin[-10] + lram_value_bin[-8] + lram_value_bin[-6] + lram_value_bin[-4] + lram_value_bin[-2] + lram_value_bin[-63] + lram_value_bin[-61] + lram_value_bin[-59] + lram_value_bin[-57] + lram_value_bin[-55] + lram_value_bin[-53] + lram_value_bin[-51] + lram_value_bin[-49] + lram_value_bin[-47] + lram_value_bin[-45]+ lram_value_bin[-43] + lram_value_bin[-41] + lram_value_bin[-39] + lram_value_bin[-37] + lram_value_bin[-35] + lram_value_bin[-33] + lram_value_bin[-31] + lram_value_bin[-29] + lram_value_bin[-27] + lram_value_bin[-25] + lram_value_bin[-23] + lram_value_bin[-21] + lram_value_bin[-19] + lram_value_bin[-17] + lram_value_bin[-15] + lram_value_bin[-13]+ lram_value_bin[-11] + lram_value_bin[-9] + lram_value_bin[-7] + lram_value_bin[-5] + lram_value_bin[-3] + lram_value_bin[-1]
		lut_value = int(lut_value_bin, 2)

	# The value of an SRL16E is constructed from the odd bits of LUT5 32 bits
	elif lram_type == 'SRL16E':
		lram_value_bin = "{:016b}".format(lram_value, 'b')
		lut_value_bin = lram_value_bin[-16] + '0' + lram_value_bin[-15] + '0' + lram_value_bin[-14] + '0' + lram_value_bin[-13] + '0' + lram_value_bin[-12] + '0' + lram_value_bin[-11] + '0' + lram_value_bin[-10] + '0' + lram_value_bin[-9] + '0' + lram_value_bin[-8] + '0' + lram_value_bin[-7] + '0' + lram_value_bin[-6] + '0' + lram_value_bin[-5] + '0' + lram_value_bin[-4] + '0' + lram_value_bin[-3] + '0' + lram_value_bin[-2] + '0' + lram_value_bin[-1] + '0'
		lut_value = int(lut_value_bin, 2)

	# The value of an SRLC32E is constructed from the odd bits of LUT6 64 bits
	elif lram_type == 'SRLC32E':
		lram_value_bin = "{:032b}".format(lram_value, 'b')
		lut_value_bin = lram_value_bin[-32] + '0' + lram_value_bin[-31] + '0' + lram_value_bin[-30] + '0' + lram_value_bin[-29] + '0' + lram_value_bin[-28] + '0' + lram_value_bin[-27] + '0' + lram_value_bin[-26] + '0' + lram_value_bin[-25] + '0' + lram_value_bin[-24] + '0' + lram_value_bin[-23] + '0' + lram_value_bin[-22] + '0' + lram_value_bin[-21] + '0' + lram_value_bin[-20] + '0' + lram_value_bin[-19] + '0' + lram_value_bin[-18] + '0' + lram_value_bin[-17] + '0' + lram_value_bin[-16] + '0' + lram_value_bin[-15] + '0' + lram_value_bin[-14] + '0' + lram_value_bin[-13] + '0' + lram_value_bin[-12] + '0' + lram_value_bin[-11] + '0' + lram_value_bin[-10] + '0' + lram_value_bin[-9] + '0' + lram_value_bin[-8] + '0' + lram_value_bin[-7] + '0' + lram_value_bin[-6] + '0' + lram_value_bin[-5] + '0' + lram_value_bin[-4] + '0' + lram_value_bin[-3] + '0' + lram_value_bin[-2] + '0' + lram_value_bin[-1] + '0'
		lut_value = int(lut_value_bin, 2)

	else:
		lut_value = lram_value

	# Loop on the bits of the lut
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
		bit_value = (lut_value >> i) & 0x1 
		if bit_value == 0:
			byte = byte & ~(1 << (bit_index[i] % 8))
		else:
			byte = byte | (1 << (bit_index[i] % 8))
		word[byte_offset] = byte

		# Overwrite the word after the modification
		bit_file.seek(word_offset)
		bit_file.write(bytes(word))
