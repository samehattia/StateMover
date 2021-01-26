from register_reader import get_register_location_in_partial_frame_data
from register_reader import get_register_location_in_frame_data

def set_register_value_in_partial_rbt_file(register_name, register_width, value, partial_design_name, partial_start_address, partial_start_line, registers):

	if '.rbt' in partial_design_name:
		partial_file_name = partial_design_name
	else:
		partial_file_name = partial_design_name + '.rbt'

	with open(partial_file_name, 'r') as partial_file:
		data = partial_file.readlines()

	for i in range(register_width):
		if register_width == 1:
				name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		location_partial, bit_offset = get_register_location_in_partial_frame_data(name, partial_start_address, registers)
		line_partial = location_partial + partial_start_line + 1
		bit_value = ((value >> i) & 0x1) ^ 0x1
		word = bytearray(data[line_partial])
		if bit_value == 0:
			word[31-bit_offset] = '0'
		else:
			word[31-bit_offset] = '1'
		data[line_partial] = str(word)

	with open(partial_file_name, 'w') as partial_file:
		partial_file.writelines(data)

def set_register_value_in_partial_bit_file(register_name, register_width, value, partial_file, partial_start_address, partial_start_byte, registers):

	# Loop on the bits of the register
	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		# Get the location (frame data word index, and the bit offset in that word) of the register bit
		location_partial, bit_offset = get_register_location_in_partial_frame_data(name, partial_start_address, registers)

		# Calculate the word offset inside the file in bytes (skipping the header bytes)
		word_offset = (partial_start_byte) + (location_partial * 4)

		# Jump to this word and read it
		partial_file.seek(word_offset)
		word = bytearray(partial_file.read(4))

		# Get the byte we need to modify
		byte_offset = (3 - int(bit_offset / 8))
		byte = word[byte_offset]

		# Bit manipulate (inverted) that byte
		bit_value = ((value >> i) & 0x1) ^ 0x1
		if bit_value == 0:
			byte = byte & ~(1 << (bit_offset % 8))
		else:
			byte = byte | (1 << (bit_offset % 8))
		word[byte_offset] = byte

		# Overwrite the word after the modification
		partial_file.seek(word_offset)
		partial_file.write(bytes(word))

def set_register_value_in_bit_file(register_name, register_width, value, file, start_byte, registers):

	# Loop on the bits of the register
	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		# Get the location (frame data word index, and the bit offset in that word) of the register bit
		location, bit_offset = get_register_location_in_frame_data(name, registers)

		# Calculate the word offset inside the file in bytes (skipping the header bytes)
		word_offset = (start_byte) + (location * 4)

		# Jump to this word and read it
		file.seek(word_offset)
		word = bytearray(file.read(4))

		# Get the byte we need to modify
		byte_offset = (3 - int(bit_offset / 8))
		byte = word[byte_offset]

		# Bit manipulate (inverted) that byte
		bit_value = ((value >> i) & 0x1) ^ 0x1
		if bit_value == 0:
			byte = byte & ~(1 << (bit_offset % 8))
		else:
			byte = byte | (1 << (bit_offset % 8))
		word[byte_offset] = byte

		# Overwrite the word after the modification
		file.seek(word_offset)
		file.write(bytes(word))

def set_register_value_in_partial_frame_data(register_name, register_width, value, partial_frame_data, partial_start_address, partial_start_byte, registers):

	# Loop on the bits of the register
	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		# Get the location (frame data word index, and the bit offset in that word) of the register bit
		location_partial, bit_offset = get_register_location_in_partial_frame_data(name, partial_start_address, registers)

		# Jump to this word and read it
		word = partial_frame_data[location_partial]

		# Bit manipulate (inverted) that byte
		bit_value = ((value >> i) & 0x1) ^ 0x1
		if bit_value == 0:
			word = word & ~(1 << bit_offset)
		else:
			word = word | (1 << bit_offset)

		# Overwrite the word after the modification
		partial_frame_data[location_partial] = word