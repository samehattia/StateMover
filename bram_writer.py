from frame_parser import parse_frame_address
from bram_reader import get_bram_location_in_partial_frame_data
from bram_reader import get_bram_location_in_frame_data
from bram_reader import get_bram_reg_location_in_frame_data
import re

def set_bram_value_in_partial_bit_file(bram_x, bram_y, bram_width, bram_value, partial_design_name, partial_start_address, word_count, partial_start_byte, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit):

	if '.bit' in partial_design_name:
		partial_file_name = partial_design_name
	else:
		partial_file_name = partial_design_name + '.bit'

	# Open the binary partial bitstream .bit file for reading and writing
	with open(partial_file_name, 'r+b') as partial_file:
		
		bram_location, bram_b = get_bram_location_in_partial_frame_data(bram_x, bram_y, partial_start_address, word_count, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)

		start_word = 0
		for i in range(len(partial_start_address)):
			s_block, s_row, s_column, s_minor = parse_frame_address(partial_start_address[i])
			start_byte = partial_start_byte[i]
			# Bram Frames found
			if (s_block == 1):
				break
			# skip clb frame words
			start_word = start_word + word_count[i]

		# Loop on the bits of the bram
		for i in range(len(bram_location)/bram_width):

			for j in range(bram_width):
				# Calculate the word offset inside the file in bytes (skipping the header bytes)
				word_offset = (start_byte) + ((bram_location[i * bram_width + j] - start_word) * 4)

				# Jump to this word and read it
				partial_file.seek(word_offset)
				word = bytearray(partial_file.read(4))

				# Get the byte we need to modify
				byte_offset = (3 - int(bram_b[i * bram_width + j] / 8))
				byte = word[byte_offset]

				# Bit manipulate that byte
				bit_value = (bram_value[i] >> j) & 0x1 
				if bit_value == 0:
					byte = byte & ~(1 << (bram_b[i * bram_width + j] % 8))
				else:
					byte = byte | (1 << (bram_b[i * bram_width + j] % 8))
				word[byte_offset] = byte

				# Overwrite the word after the modification
				partial_file.seek(word_offset)
				partial_file.write(bytes(word))

def set_named_bram_value_in_bit_file(bram_name, bram_value, design_name, start_byte, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, ram_name, ram_type, ram_xy, ram_bel):

	if '.bit' in design_name:
		file_name = design_name
	else:
		file_name = design_name + '.bit'

	# Open the binary partial bitstream .bit file for reading and writing
	with open(file_name, 'r+b') as file:
		
		# Get info about the lram from its name
		bram_name_stripped = bram_name[:bram_name.rfind('/')]
		for i in range(len(ram_name)):
			if bram_name_stripped == ram_name[i]:
				bram_type = ram_type[i]
				xy = ram_xy[i]
				bram_bel = ram_bel[i]
				break

		# Get the location of this lram in the partial bitstream file
		x = int(re.split("Y", xy.lstrip('X'), 0)[0])
		y = int(re.split("Y", xy.lstrip('X'), 0)[1])

		# Check which LUT6 in the 8 LUTs of this lram should be updated
		bram_location, bram_b = get_bram_location_in_frame_data(x, y, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit)

		# Loop on the bits of the bram
		for i in range(len(bram_location)):

			# Calculate the word offset inside the file in bytes (skipping the header bytes)
			word_offset = (start_byte) + (bram_location[i] * 4)

			# Jump to this word and read it
			file.seek(word_offset)
			word = bytearray(file.read(4))

			# Get the byte we need to modify
			byte_offset = (3 - int(bram_b[i] / 8))
			byte = word[byte_offset]

			# Bit manipulate that byte
			bit_value = (bram_value >> i) & 0x1 
			if bit_value == 0:
				byte = byte & ~(1 << (bram_b[i] % 8))
			else:
				byte = byte | (1 << (bram_b[i] % 8))
			word[byte_offset] = byte

			# Overwrite the word after the modification
			file.seek(word_offset)
			file.write(bytes(word))

def set_named_bram_reg_value_in_bit_file(bram_reg_name, bram_reg_value, design_name, start_byte, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, ram_name, ram_type, ram_xy, ram_bel):

	if '.bit' in design_name:
		file_name = design_name
	else:
		file_name = design_name + '.bit'

	# Open the binary partial bitstream .bit file for reading and writing
	with open(file_name, 'r+b') as file:
		
		# Get info about the bram from its name
		bram_name_stripped = bram_reg_name[:bram_reg_name.rfind('/')]
		for i in range(len(ram_name)):
			if bram_name_stripped == ram_name[i]:
				bram_type = ram_type[i]
				xy = ram_xy[i]
				bram_bel = ram_bel[i]
				break

		if 'mem_b_lat' in bram_reg_name:
			bram_reg_l = 'b'
		else:
			bram_reg_l = 'a'	

		# Get the location of this lram in the partial bitstream file
		x = int(re.split("Y", xy.lstrip('X'), 0)[0])
		y = int(re.split("Y", xy.lstrip('X'), 0)[1])

		bram_reg_location, bram_reg_b = get_bram_reg_location_in_frame_data(x, y, bram_bel, bram_reg_l)

		# Set mem_b_lat value
		for i in range(len(bram_reg_location)):
			# Calculate the word offset inside the file in bytes (skipping the header bytes)
			word_offset = (start_byte) + (bram_reg_location[i] * 4)

			# Jump to this word and read it
			file.seek(word_offset)
			word = bytearray(file.read(4))

			# Get the byte we need to modify
			byte_offset = (3 - int(bram_reg_b[i] / 8))
			byte = word[byte_offset]

			# Bit manipulate that byte
			bit_value = (bram_reg_value >> i) & 0x1 
			if bit_value == 0:
				byte = byte & ~(1 << (bram_reg_b[i] % 8))
			else:
				byte = byte | (1 << (bram_reg_b[i] % 8))
			word[byte_offset] = byte

			# Overwrite the word after the modification
			file.seek(word_offset)
			file.write(bytes(word))
