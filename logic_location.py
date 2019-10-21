import re
from frame_parser import parse_frame_address

FRAME_LENGTH = 123
MAX_FRAMES = 32530

'''
This function helps in generating the frame count of each column (number of minor frames per each column).
After parsing the logic allocation file of an FPGA design with at least a register at each CLB column,
this function is called to print the frame index of each column in all the rows.
It also shows the relation between the CLB column number (SLICE_X#) and the column number in Frame Address
Subtracting the frame index of two consecutive columns will give the frame count of the first column
Note: registers contents are in frames with minor equals to 4
'''
def print_logic_location_info(reg_bit_offset, reg_frame_address, reg_slice_xy, bram_bit_offset, bram_frame_address):

	MAX_COLUMN = 200
	ROWS = 5 # KCU040 0-4
	CLB_COLUMNS = 101 # KCU040 0-100
	BRAM_COLUMNS = 10 # KCU040 0-9

	column_index = [[0] * MAX_COLUMN for i in range(ROWS)]
	column_slice = [[-1] * MAX_COLUMN for i in range(ROWS)]
	frame_count = [0] * MAX_COLUMN

	for i in range(len(reg_bit_offset)):
		index = reg_bit_offset[i] / 32 / FRAME_LENGTH
		block, row, column, minor = parse_frame_address(reg_frame_address[i])
		if minor != 4:
			print("Warning: a frame with a minor != 4")
		column_index[row][column] = index
		column_slice[row][column] = int(re.split("Y", reg_slice_xy[i].lstrip('X'), 0)[0])

	for row in range(ROWS):
		print("Row " + str(row))
		print("Frame column \t Frame index \t CLB Column")
		for col in range(MAX_COLUMN):
			print(str(col) + "\t\t" + str(column_index[row][col]) + "\t\t" + str(column_slice[row][col]))

	for col in range(MAX_COLUMN):		
		clb_column = -1
		for row in range(ROWS):
			if column_slice[row][col] != -1:
				clb_column = column_slice[row][col]
				break

		# Check if it is CLB column		
		if clb_column == -1:
			continue

		# Get the next frame column that has the next CLB column info
		next_col = -1 
		for n_col in range(col+1, MAX_COLUMN):
			for row in range(ROWS):
				if column_slice[row][n_col] == clb_column + 1:
					next_col = n_col
					break
			if next_col != -1:
				break		

		if next_col == -1:
			continue

		for row in range(ROWS):
			if column_index[row][col] != 0 and column_index[row][next_col] != 0:
				frame_count[col] = column_index[row][next_col] - column_index[row][col]

	for col in range(MAX_COLUMN):
		print(str(col) + "\t" + str(frame_count[col]))

	for col in range(MAX_COLUMN):
		if frame_count[col] == 70:
			frame_count[col] = 12
			frame_count[col+1] = 58
		if frame_count[col] == 74:
			frame_count[col] = 12
			frame_count[col+1] = 58	
			frame_count[col+2] = 4	
		if frame_count[col] == 76:
			frame_count[col] = 12
			frame_count[col+1] = 58	
			frame_count[col+2] = 6	
		if frame_count[col] > 76:
			frame_count[col+2] = frame_count[col] - 70
			frame_count[col] = 12
			frame_count[col+1] = 58	

	for col in range(MAX_COLUMN):
		print(str(col) + "\t" + str(frame_count[col]))

	print("Reported frames per row = " + str(sum(frame_count)))

	bram_column_index = [[0] * BRAM_COLUMNS for i in range(ROWS)]
	bram_frame_count = [0] * BRAM_COLUMNS

	for i in range(len(bram_frame_address)):
		index = bram_bit_offset[i] / 32 / FRAME_LENGTH
		block, row, column, minor = parse_frame_address(bram_frame_address[i])
		if minor == 0:
			bram_column_index[row][column] = index

	for row in range(ROWS):
		print("Row " + str(row))
		print("Frame column \t Frame index")
		for col in range(BRAM_COLUMNS):
			print(str(col) + "\t\t" + str(bram_column_index[row][col]))

	for col in range(BRAM_COLUMNS):		
		for row in range(ROWS):
			if col + 1 < BRAM_COLUMNS:
				if bram_column_index[row][col] != 0 and bram_column_index[row][col+1] != 0:
					bram_frame_count[col] = bram_column_index[row][col+1] - bram_column_index[row][col]

	for col in range(BRAM_COLUMNS):
		print(str(col) + "\t" + str(bram_frame_count[col]))

def parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit):

	#### Skip the header section ####
	# Read the first line
	line = ll_file.readline()
	# Split the line into words delimited with space
	words = line.split()

	# Loop until the first word in the line is Bit
	while words[0] != 'Bit':
		# Read the next line
		line = ll_file.readline()
		# Split the line into words delimited with space
		words = line.split()

	#### Parse the file ####
	while True:
		# If the line doesn't start with 'Bit' or we reach the EOF, break
		if not line or words[0] != 'Bit':
			break

		# Check if the line contains information about design elements and store it
		if len(words) >= 9 and 'Net=' in words[8] and 'Latch=' in words[7]:
			reg_name.append(words[8].lstrip('Net='))
			reg_bit_offset.append(int(words[1]))
			reg_frame_address.append(int(words[2].lstrip('0x'), 16))
			reg_frame_offset.append(int(words[3]))
			reg_slice_xy.append(words[6].lstrip('Block=SLICE_'))

		if 'RAM=B:' in words[7] and 'Block=RAMB36' in words[6]:
			bram_bit_offset.append(int(words[1]))
			bram_frame_address.append(int(words[2].lstrip('0x'), 16))
			bram_frame_offset.append(int(words[3]))
			bram_xy.append(words[6].lstrip('Block=RAMB36_'))
			bram_bit.append(words[7].lstrip('RAM=B:'))

		if 'Ram=' in words[7] and 'Block=SLICE' in words[6]:
			lram_bit_offset.append(int(words[1]))
			lram_frame_address.append(int(words[2].lstrip('0x'), 16))
			lram_frame_offset.append(int(words[3]))
			lram_xy.append(words[6].lstrip('Block=SLICE_'))
			lram_bit.append(words[7].lstrip('Ram='))

		# Read the next line
		line = ll_file.readline()
		# Split the line into words delimited with space
		words = line.split()

