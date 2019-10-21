import struct

def parse_frame_address(frame_address):
	block = frame_address >> 23
	row = (frame_address >> 17) & 0x3F
	column = (frame_address >> 7) & 0x3FF
	minor = (frame_address) & 0x7F

	return block, row, column, minor

def parse_frame_data(data_file, start_address, word_count, frame_data, line_no=0):
	# Read the first word
	line = data_file.readline()
	line_no = line_no + 1

	i = 0;
	while line:
		frame_data.append(int(line, 2))
		i = i + 1
		if i == word_count:
			break; 
		line = data_file.readline()
		line_no = line_no + 1

	return line_no

def parse_configuration_information(data_file, line_no=0):
	start_address = -1
	word_count = -1
	# Retrieve configuration information and skip to frame data
	while True:
		line = data_file.readline()
		line_no = line_no + 1
		if not line:
			break
		word = int(line, 2)
		# Detect writing to FAR Register
		if word == 0x30002001:
			# Read the next word which contains the frame data start address
			line = data_file.readline()
			line_no = line_no + 1
			word = int(line, 2)
			start_address = word
		# Detect writing to FDRI Register	
		if word == 0x30004000:
			# Read the next word which contains the frame data word count
			line = data_file.readline()
			line_no = line_no + 1
			word = int(line, 2)
			word_count = word & 0x00FFFFFF
			# Exit since the next word is a frame data
			break
		# Detect writing to FDRI Register with word count
		if (word & 0xFFFFF000) == 0x30004000:
			word_count = word & 0x00000FFF
			# Exit since the next word is a frame data
			break

	return start_address, word_count, line_no

def parse_binary_frame_data(data_file, start_address, word_count, frame_data, byte_no=0):

	i = 0;
	while i < word_count:
		data = data_file.read(4)
		byte_no = byte_no + 4
		word = struct.unpack(">I", data)
		frame_data.append(word[0])
		i = i + 1

	return byte_no

def parse_binary_configuration_information(data_file, byte_no=0):
	start_address = -1
	word_count = -1
	# Retrieve configuration information and skip to frame data
	while True:
		# Read four bytes from the file
		data = data_file.read(4)
		byte_no = byte_no + 4
		# Check EOF
		if not data:
			break;
		# Interpret them as 32-bit unsigned Big-Indian
		word = struct.unpack(">I", data)
		# Detect writing to FAR Register
		if word[0] == 0x30002001:
			# Read the next word which contains the frame data start address
			data = data_file.read(4)
			byte_no = byte_no + 4
			word = struct.unpack(">I", data)
			start_address = word[0]
		# Detect writing to FDRI Register with no word cound
		if word[0] == 0x30004000:
			# Read the next word which contains the frame data word count
			data = data_file.read(4)
			byte_no = byte_no + 4
			word = struct.unpack(">I", data)
			word_count = word[0] & 0x00FFFFFF
			# Exit since the next word is a frame data
			break
		# Detect writing to FDRI Register with a word cound
		if (word[0] & 0xFFFFF000) == 0x30004000:
			word_count = word[0] & 0x00000FFF
			# Exit since the next word is a frame data
			break

	return start_address, word_count, byte_no
