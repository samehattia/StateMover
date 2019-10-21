from lram_reader import get_lram_location_in_partial_frame_data
from lram_reader import get_lram_location_in_frame_data
import re

def set_lram_value_in_partial_bit_file(lram_x, lram_y, lram_width, lram_value, partial_design_name, partial_start_address, partial_start_byte, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit):

	if '.bit' in partial_design_name:
		partial_file_name = partial_design_name
	else:
		partial_file_name = partial_design_name + '.bit'

	# Open the binary partial bitstream .bit file for reading and writing
	with open(partial_file_name, 'r+b') as partial_file:
		
		lram_location, lram_b = get_lram_location_in_partial_frame_data(lram_x, lram_y, partial_start_address, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

		# Loop on the bits of the lram
		for i in range(int(len(lram_location)/lram_width)):

			for j in range(lram_width):
				# Calculate the word offset inside the file in bytes (skipping the header bytes)
				word_offset = (partial_start_byte) + (lram_location[i * lram_width + j] * 4)

				# Jump to this word and read it
				partial_file.seek(word_offset)
				word = bytearray(partial_file.read(4))

				# Get the byte we need to modify
				byte_offset = (3 - int(lram_b[i * lram_width + j] / 8))
				byte = word[byte_offset]

				# Bit manipulate that byte
				bit_value = (lram_value[i] >> j) & 0x1 
				if bit_value == 0:
					byte = byte & ~(1 << (lram_b[i * lram_width + j] % 8))
				else:
					byte = byte | (1 << (lram_b[i * lram_width + j] % 8))
				word[byte_offset] = byte

				# Overwrite the word after the modification
				partial_file.seek(word_offset)
				partial_file.write(bytes(word))

def set_named_lram_value_in_partial_bit_file(lram_name, lram_value, partial_design_name, partial_start_address, partial_start_byte, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit, ram_name, ram_type, ram_xy, ram_bel):

	if '.bit' in partial_design_name:
		partial_file_name = partial_design_name
	else:
		partial_file_name = partial_design_name + '.bit'

	# Open the binary partial bitstream .bit file for reading and writing
	with open(partial_file_name, 'r+b') as partial_file:
		
		# Get info about the lram from its name
		lram_name_stripped = lram_name[:lram_name.rfind('/')]
		for i in range(len(ram_name)):
			if lram_name_stripped == ram_name[i]:
				lram_type = ram_type[i]
				xy = ram_xy[i]
				lram_bel = ram_bel[i]
				break

		# Get the location of this lram in the partial bitstream file
		x = int(re.split("Y", xy.lstrip('X'), 0)[0])
		y = int(re.split("Y", xy.lstrip('X'), 0)[1])
		lram_location, lram_b = get_lram_location_in_partial_frame_data(x, y, partial_start_address, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

		# Check which LUT6 in the 8 LUTs of this lram should be updated
		if lram_type == 'RAM64M8' or lram_type == 'RAM64M' or lram_type == 'RAM32M16' or lram_type == 'RAM32M':
			lut = ord(lram_name[-1]) - ord('a')
		else:
			lut = ord(lram_bel[0]) - ord('A')	
		lut_location = lram_location[lut * 64 : lut * 64 + 64]
		lut_b = lram_b[lut * 64 : lut * 64 + 64]

		# Check which LUT5 (the lower or the upper) of this LUT6 should be updated
		if lram_type == 'SRL16E':
			if lram_bel[1] == '5':
				lut_location = lut_location[0:32]
				lut_b = lut_b[0:32]
			elif lram_bel[1] == '6':
				lut_location = lut_location[32:]
				lut_b = lut_b[32:]

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

		else:
			lut_value = lram_value

		# Loop on the bits of the lut
		for i in range(len(lut_location)):

			# Calculate the word offset inside the file in bytes (skipping the header bytes)
			word_offset = (partial_start_byte) + (lut_location[i] * 4)

			# Jump to this word and read it
			partial_file.seek(word_offset)
			word = bytearray(partial_file.read(4))

			# Get the byte we need to modify
			byte_offset = (3 - int(lut_b[i] / 8))
			byte = word[byte_offset]

			# Bit manipulate that byte
			bit_value = (lut_value >> i) & 0x1 
			if bit_value == 0:
				byte = byte & ~(1 << (lut_b[i] % 8))
			else:
				byte = byte | (1 << (lut_b[i] % 8))
			word[byte_offset] = byte

			# Overwrite the word after the modification
			partial_file.seek(word_offset)
			partial_file.write(bytes(word))


def set_named_lram_value_in_bit_file(lram_name, lram_value, design_name, start_byte, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit, ram_name, ram_type, ram_xy, ram_bel):

	if '.bit' in design_name:
		file_name = design_name
	else:
		file_name = design_name + '.bit'

	# Open the binary partial bitstream .bit file for reading and writing
	with open(file_name, 'r+b') as file:
		
		# Get info about the lram from its name
		lram_name_stripped = lram_name[:lram_name.rfind('/')]
		for i in range(len(ram_name)):
			if lram_name_stripped == ram_name[i]:
				lram_type = ram_type[i]
				xy = ram_xy[i]
				lram_bel = ram_bel[i]
				break

		# Get the location of this lram in the partial bitstream file
		x = int(re.split("Y", xy.lstrip('X'), 0)[0])
		y = int(re.split("Y", xy.lstrip('X'), 0)[1])
		lram_location, lram_b = get_lram_location_in_frame_data(x, y, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit)

		# Check which LUT6 in the 8 LUTs of this lram should be updated
		if lram_type == 'RAM64M8' or lram_type == 'RAM64M' or lram_type == 'RAM32M16' or lram_type == 'RAM32M':
			lut = ord(lram_name[-1]) - ord('a')
		else:
			lut = ord(lram_bel[0]) - ord('A')	
		lut_location = lram_location[lut * 64 : lut * 64 + 64]
		lut_b = lram_b[lut * 64 : lut * 64 + 64]

		# Check which LUT5 (the lower or the upper) of this LUT6 should be updated
		if lram_type == 'SRL16E':
			if lram_bel[1] == '5':
				lut_location = lut_location[0:32]
				lut_b = lut_b[0:32]
			elif lram_bel[1] == '6':
				lut_location = lut_location[32:]
				lut_b = lut_b[32:]

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

		else:
			lut_value = lram_value

		# Loop on the bits of the lut
		for i in range(len(lut_location)):

			# Calculate the word offset inside the file in bytes (skipping the header bytes)
			word_offset = (start_byte) + (lut_location[i] * 4)

			# Jump to this word and read it
			file.seek(word_offset)
			word = bytearray(file.read(4))

			# Get the byte we need to modify
			byte_offset = (3 - int(lut_b[i] / 8))
			byte = word[byte_offset]

			# Bit manipulate that byte
			bit_value = (lut_value >> i) & 0x1 
			if bit_value == 0:
				byte = byte & ~(1 << (lut_b[i] % 8))
			else:
				byte = byte | (1 << (lut_b[i] % 8))
			word[byte_offset] = byte

			# Overwrite the word after the modification
			file.seek(word_offset)
			file.write(bytes(word))