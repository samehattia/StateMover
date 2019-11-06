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

def parse_logic_location_file(ll_file, reg_name, reg_bit_offset, reg_frame_address, reg_frame_offset, reg_slice_xy, bram_bit_offset, bram_frame_address, bram_frame_offset, bram_xy, bram_bit, lram_bit_offset, lram_frame_address, lram_frame_offset, lram_xy, lram_bit, bram_enable=False):

	# Read the file
	#lines = ll_file.readlines()
	reg_index = 0
	lram_index = 0
	bram_index = 0
	for line in ll_file: # lines:
		# Split the line into words delimited with space
		# words = line.split()

		# Skip the header section
		if line[0] != 'B':
			continue

		# Check if the line contains information about design elements and store it
		if line[44] == 'S': # Block=(S)LICE
			words = line.split()
			if len(words) >= 9 and words[8][0] == 'N' and words[7][0] == 'L': # (N)et= (L)atch=
				reg_name[words[8].lstrip('Net=')] = reg_index
				reg_bit_offset.append(int(words[1]))
				reg_frame_address.append(int(words[2].lstrip('0x'), 16))
				reg_frame_offset.append(int(words[3]))
				reg_slice_xy.append(words[6].lstrip('Block=SLICE_'))
				reg_index = reg_index + 1
			elif words[7][0] == 'R': # (R)am=
				lram_xy[words[6].lstrip('Block=SLICE_') + 'L' + words[7][4]].append(lram_index) # [X_Y_L_] e.g. [X15Y9LA]
				lram_bit_offset.append(int(words[1]))
				lram_frame_address.append(int(words[2].lstrip('0x'), 16))
				lram_frame_offset.append(int(words[3]))
				lram_bit.append(re.split(":", words[7], 0)[1])
				lram_index = lram_index + 1
		
		elif bram_enable and line[44] == 'R': # Block=(R)AMB
			words = line.split()
			if line[48] == '3': # Block=RAMB(3)6'
				bram_xy[words[6].lstrip('Block=RAMB36_')].append(bram_index) # X_Y_
				bram_bit_offset.append(int(words[1]))
				bram_frame_address.append(int(words[2].lstrip('0x'), 16))
				bram_frame_offset.append(int(words[3]))				
				bram_bit.append(words[7].lstrip('RAM=B:'))
				bram_index = bram_index + 1
