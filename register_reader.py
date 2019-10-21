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

def get_register_info(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset):

	index = reg_name[register_name]
	bit_offset = reg_bit_offset[index]
	frame_address = reg_frame_address[index]
	frame_offset =  reg_frame_offset[index]
	return bit_offset, frame_address, frame_offset

def print_register_info(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset):

	bit_offset, frame_address, frame_offset = get_register_info(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
	print("Name = " + register_name + '\nBit offset = ' + str(bit_offset) + ' Frame address = ' +  
		str(hex(frame_address)) + ' Frame offset = ' + str(frame_offset))

	block, row, column, minor = parse_frame_address(frame_address)
	print ("Block = " + str(block) + " Row = " + str(row) + " Column = " + str(column) + " minor = " + str(minor)) 

def get_register_location_in_frame_data(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset):
	bit_offset, frame_address, frame_offset = get_register_info(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)

	location = int(bit_offset / 32)
	bit = bit_offset % 32

	return location, bit

def get_register_location_in_partial_frame_data(register_name, start_frame_address, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset):

	bit_offset, frame_address, frame_offset = get_register_info(register_name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)

	block, row, column, minor = parse_frame_address(frame_address)
	s_block, s_row, s_column, s_minor = parse_frame_address(start_frame_address)

	frames_per_row = sum(XCKU040_frame_count)

	accumulated_frame_count = sum(XCKU040_frame_count[0:column])	
	full_frame_data_index =  (minor + accumulated_frame_count + frames_per_row * row) * FRAME_LENGTH

	s_accumulated_frame_count = sum(XCKU040_frame_count[0:s_column])	
	s_full_frame_data_index =  (s_minor + s_accumulated_frame_count + frames_per_row * s_row) * FRAME_LENGTH

	location = (full_frame_data_index - s_full_frame_data_index) + int(frame_offset / 32)
	bit = frame_offset % 32

	return location, bit

def get_register_value_from_frame_data_fast(register_name, register_width, frame_data, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset):
	value = 0

	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'
		location_full, bit_full = get_register_location_in_frame_data(name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
		bit_value = ((int(frame_data[location_full], 2) >> bit_full) & 0x1) ^ 0x1
		value = value | (bit_value << i)

	return value

def get_register_value_from_frame_data(register_name, register_width, frame_data, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset):
	value = 0

	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'
		location_full, bit_full = get_register_location_in_frame_data(name, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
		bit_value = ((frame_data[location_full] >> bit_full) & 0x1) ^ 0x1
		value = value | (bit_value << i)

	return value

def get_register_value_from_partial_frame_data(register_name, register_width, partial_frame_data, start_frame_address, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset):
	value = 0

	for i in range(register_width):
		if register_width == 1:
			name = register_name
		else:
			name = register_name + '[' + str(i) + ']'
		location_partial, bit_partial = get_register_location_in_partial_frame_data(name, start_frame_address, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset)
		bit_value = ((partial_frame_data[location_partial] >> bit_partial) & 0x1) ^ 0x1
		value = value | (bit_value << i)

	return value