from register_reader import get_register_location_in_frame_data

def set_register_value_in_frame_data(registers, register_name, register_width, value, frame_data, start_word_index=0):

	# Loop on the bits of the register
	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		# Get the location (frame data word index, and the bit offset in that word) of the register bit
		word_index, bit_index = get_register_location_in_frame_data(registers, name, start_word_index)

		# Jump to this word and read it
		word = frame_data[word_index]

		# Bit manipulate (inverted) that byte
		bit_value = ((value >> i) & 0x1) ^ 0x1
		if bit_value == 0:
			word = word & ~(1 << bit_index)
		else:
			word = word | (1 << bit_index)

		# Overwrite the word after the modification
		frame_data[word_index] = word

def set_register_value_in_rbt_file(registers, register_name, register_width, value, rbt_file_name, start_line, start_word_index=0):

	with open(rbt_file_name, 'r') as rbt_file:
		data = rbt_file.readlines()

	for i in range(register_width):
		if register_width == 1:
				name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		word_index, bit_index = get_register_location_in_frame_data(registers, name, start_word_index)
		line = word_index + start_line + 1
		bit_value = ((value >> i) & 0x1) ^ 0x1

		word = bytearray(data[line])
		if bit_value == 0:
			word[31-bit_index] = '0'
		else:
			word[31-bit_index] = '1'
		data[line] = str(word)

	with open(rbt_file_name, 'w') as rbt_file:
		rbt_file.writelines(data)

def set_register_value_in_bit_file(registers, register_name, register_width, value, bit_file, start_byte, start_word_index=0):

	# Loop on the bits of the register
	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		# Get the location (frame data word index, and the bit offset in that word) of the register bit
		word_index, bit_index = get_register_location_in_frame_data(registers, name, start_word_index)

		# Calculate the word offset inside the file in bytes (skipping the header bytes)
		word_offset = (start_byte) + (word_index * 4)

		# Jump to this word and read it
		bit_file.seek(word_offset)
		word = bytearray(bit_file.read(4))

		# Get the byte we need to modify
		byte_offset = (3 - (bit_index >> 3))
		byte = word[byte_offset]

		# Bit manipulate (inverted) that byte
		bit_value = ((value >> i) & 0x1) ^ 0x1
		if bit_value == 0:
			byte = byte & ~(1 << (bit_index % 8))
		else:
			byte = byte | (1 << (bit_index % 8))
		word[byte_offset] = byte

		# Overwrite the word after the modification
		bit_file.seek(word_offset)
		bit_file.write(bytes(word))