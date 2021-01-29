
def get_register_info(registers, register_name):

	reg_loc_info = registers[register_name]
	bit_offset = reg_loc_info.bit_offset
	frame_address = reg_loc_info.frame_address
	frame_offset =  reg_loc_info.frame_offset
	return bit_offset, frame_address, frame_offset

def get_register_location_in_frame_data(registers, register_name, start_word_index=0):

	bit_offset, frame_address, frame_offset = get_register_info(registers, register_name)

	word_index = (bit_offset >> 5) - start_word_index
	bit_index = bit_offset % 32

	return word_index, bit_index

def get_register_value_from_frame_data(registers, register_name, register_width, frame_data, start_word_index=0, fast=False):
	value = 0

	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'

		word_index, bit_index = get_register_location_in_frame_data(registers, name, start_word_index)
		if fast:
			bit_value = ((int(frame_data[word_index], 2) >> bit_index) & 0x1) ^ 0x1
		else:
			bit_value = ((frame_data[word_index] >> bit_index) & 0x1) ^ 0x1
		value = value | (bit_value << i)

	return value