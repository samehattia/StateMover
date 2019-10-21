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
	
def verify_readback_data(readback_frame_data, expected_frame_data, mask_frame_data):
	# Check number of words 
	if len(readback_frame_data) != len(expected_frame_data) or len(readback_frame_data) != len(mask_frame_data):
		print("Readback Verification Failed")
		return

	# Mask frame data and compare it	
	errors = 0
	index = 0	
	correct = 0
	for index in range(len(readback_frame_data)):
		actual = readback_frame_data[index] & ~mask_frame_data[index]
		expected = expected_frame_data[index] & ~mask_frame_data[index]
		if actual !=  expected:
			errors = errors + 1
		if actual ==  expected and readback_frame_data[index] != 0 and ~mask_frame_data[index] != 0:
			correct = correct + 1	

	if errors != 0:
		print("Readback Verification Failed with " + str(errors) + " errors and " + str(correct) + " matches")
	else:
		print("Readback Verification Succeeded")


def compare_partial_and_full_frame_data(start_frame_address, word_count, frame_data, partial_frame_data):
	global XCKU040_frame_count

	block, row, column, minor = parse_frame_address(start_frame_address)
	
	frames_per_row = sum(XCKU040_frame_count)
	accumulated_frame_count = sum(XCKU040_frame_count[0:column])
	
	full_frame_data_index =  (minor + accumulated_frame_count + frames_per_row * row) * FRAME_LENGTH

	matches = 0
	errors = 0
	for i in range(word_count):
		if partial_frame_data[i] == frame_data[i + full_frame_data_index]:
			matches = matches + 1
		else:
			errors = errors + 1

	print("Full and partial bitstream: matches = " + str(matches) + " and errors = " + str(errors))