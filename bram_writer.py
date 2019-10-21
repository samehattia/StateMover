from frame_parser import parse_frame_address
from bram_reader import get_bram_location_in_partial_frame_data

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