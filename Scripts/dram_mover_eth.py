#!/usr/bin/env python3

from socket import *
from timeit import default_timer as timer
import time
import sys

def readback_dram_state(src_addr, dst_addr, start_address, page_count):
	eth_type = b"\x7A\x07"

	with open("dram_hw_state.dump", 'w') as dram_hw_state_file:
		# Send read command to FPGA
		s.send((dst_addr + src_addr + eth_type + start_address.to_bytes(4, byteorder='little') + page_count.to_bytes(4, byteorder='little')))

		# Receive DRAM pages, each page is received over two packets
		for i in range(page_count):

			packet_1 = s.recv(1038)
			packet_2 = s.recv(1038)

			if packet_1[12:14] == b"\x7A\x05" and packet_2[12:14] == b"\x7A\x05":
				payload_1 = packet_1[14:1038]
				payload_2 = packet_2[14:1038]
			else:
				print("Error: received bad packet")
				break

			# reverse the dram page and convert to hex
			payload_1 = bytearray(payload_1)
			payload_2 = bytearray(payload_2)
			payload_1.reverse()
			payload_2.reverse()
			payload_1 = payload_1.hex()
			payload_2 = payload_2.hex()

			# write the page to the file as one line
			dram_hw_state_file.write(payload_2)
			dram_hw_state_file.write(payload_1)
			dram_hw_state_file.write("\n")

def writeback_dram_state(src_addr, dst_addr, start_address, page_count, state_file):
	eth_type = b"\x7A\x05"

	with open(state_file, 'r') as dram_sim_state_file:
		while True:
			# read a line (dram page) from the file
			page = dram_sim_state_file.readline()
			page_count = page_count - 1

			# check EOF
			if not page or page_count == 0:
				break

			# Convert it to bytes and reverse it
			payload = bytearray.fromhex(page.rstrip())
			payload.reverse()

			# send it over two packets
			s.send((dst_addr + src_addr + eth_type + start_address.to_bytes(4, byteorder='little') + payload[0:1024]))
			start_address = start_address + 256
			s.send((dst_addr + src_addr + eth_type + start_address.to_bytes(4, byteorder='little') + payload[1024:2048]))
			start_address = start_address + 256

			#time.sleep(0.00005)

# Parse command line arguments into program arguments and options
opts = [opt for opt in sys.argv[1:] if opt.startswith("-")]
args = [arg for arg in sys.argv[1:] if not arg.startswith("-")]

if len(args) == 0:
	start_address = 0
	page_count = 1024
elif len(args) == 1:
	start_address = int(args[0])
	page_count = 1024
elif len(args) >= 2:
	start_address = int(args[0])
	page_count = int(args[1])

if '-readback' in opts:
	READBACK = True
elif '-writeback' in opts:
	READBACK = False
	state_file = args[2]
else:
	print("Expects -readback or -writeback option")
	exit()

# MAC Addresses
src_addr = b"\xD0\x37\x45\x92\xDA\x25"
dst_addr = b"\x00\x0A\x35\x00\x01\x02"

# A flag to receive all ethernet packets
ETH_P_ALL = 3

s = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ALL))
s.bind(("enxd0374592da25", 0))

start = timer()

if READBACK:
	readback_dram_state(src_addr, dst_addr, start_address, page_count)
else:
	writeback_dram_state(src_addr, dst_addr, start_address, page_count, state_file)

end = timer()
print(end - start)
