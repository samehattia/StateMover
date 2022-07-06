#!/usr/bin/env python3

import os
import os.path
import time
import StateLink

def perform_ethernet_axi_transaction (eth_axi_socket, eth_axi_id, axi_command, axi_address, axi_len, axi_data=""):
	src_addr = StateLink.ETH_SRC_ADDR
	dst_addr = StateLink.ETH_DST_ADDR
	eth_type = StateLink.ETH_TYPE

	read_command = b"\x52"
	write_command = b"\x57"

	if axi_command == "read":

		axi_address = int(axi_address, 16)

		# Send read command to FPGA
		eth_axi_socket.send((dst_addr + src_addr + eth_type + eth_axi_id.to_bytes(1, byteorder='little') + read_command + axi_address.to_bytes(4, byteorder='little') + axi_len.to_bytes(4, byteorder='little')))

		packet = eth_axi_socket.recv(3000)

		if packet[12:14] == eth_type and packet[14:15] == eth_axi_id.to_bytes(1, byteorder='little') and packet[15:16] == read_command:
			recv_address = packet[16:20]
			recv_len = packet[20:24]
			recv_data = packet[24:]
		else:
			print("Error: received bad packet " + packet.hex())
			return

		recv_data = bytearray(recv_data)
		recv_data.reverse()
		recv_data = recv_data.hex()

		signature_index = recv_data.find("deadbeef")

		# Check Ethernet AXI response
		if signature_index == -1:
			print("Warning: Incorrect data")

		timestamp = recv_data[signature_index + 8:signature_index + 16]
		read_data = recv_data[signature_index + 16:]

		return read_data, timestamp

	elif axi_command == "write":

		axi_address = int(axi_address, 16)

		axi_data = bytearray.fromhex(axi_data)
		axi_data.reverse()

		# Send write command to FPGA
		eth_axi_socket.send((dst_addr + src_addr + eth_type + eth_axi_id.to_bytes(1, byteorder='little') + write_command + axi_address.to_bytes(4, byteorder='little') + axi_len.to_bytes(4, byteorder='little') +  bytes(axi_data)))

		packet = eth_axi_socket.recv(1024)

		if packet[12:14] == eth_type and packet[14:15] == eth_axi_id.to_bytes(1, byteorder='little') and packet[15:16] == write_command:
			recv_address = packet[16:20]
			recv_len = packet[20:24]
			recv_data = packet[24:]
		else:
			print("Error: received bad packet " + packet.hex())
			return

		# Check Ethernet AXI response
		if recv_data[4:8] != b"\xEF\xBE\xAD\xDE":
			print("Warning: Incorrect Ethernet AXI response")

		timestamp = bytes([recv_data[3], recv_data[2], recv_data[1], recv_data[0]]).hex()
		
		return timestamp

def read_axi_sim_to_hw_pipe (loop, sim_to_hw_pipe, hw_to_sim_pipe, hw_to_sim_pipename, eth_axi_socket, eth_axi_id, counters):

	data = (sim_to_hw_pipe.readline()).rstrip('\x00').split()

	if not data:
		sim_to_hw_pipe.close()
		print("Pipe Closed")
		loop.stop()
		return

	command = data[0]

	if command == "W":

		waddr = data[1]
		wlen = int(data[2])
		wdata = data[3]

		#create_hw_axi_txn wr_txn [get_hw_axis $jtag_axi] -address $waddr -len $wlen -type write -force -data $wdata
		timestamp = perform_ethernet_axi_transaction (eth_axi_socket, eth_axi_id, "write", waddr, wlen, wdata)

		if StateLink.AXI_TIMESTAMP_MODE == 0:

			hw_to_sim_pipe.write("W " + "\0")
			hw_to_sim_pipe.flush()

		else:

			hw_to_sim_pipe.write("W " + timestamp + "\0")
			hw_to_sim_pipe.flush()

		counters.AXI_WRITE_COMMAND_COUNTER += 1

	elif command == "R":

		raddr = data[1]
		rlen = int(data[2])

		#create_hw_axi_txn rd_txn [get_hw_axis $jtag_axi] -address $raddr -len $rlen -type read -force
		read_data, timestamp = perform_ethernet_axi_transaction (eth_axi_socket, eth_axi_id, "read", raddr, rlen)

		if StateLink.AXI_TIMESTAMP_MODE == 0:

			hw_to_sim_pipe.write("R " + read_data + "\0")
			hw_to_sim_pipe.flush()

		else:

			hw_to_sim_pipe.write("R " + read_data + " " + timestamp + "\0")
			hw_to_sim_pipe.flush()

		counters.AXI_READ_COMMAND_COUNTER += 1

### Open the fifo, set up event-driven input from it.
def setup_axi_link (loop, sim_to_hw_pipename, hw_to_sim_pipename, eth_axi_socket, eth_axi_id, counters):

	while 1:
		if os.path.exists(sim_to_hw_pipename):
			break
		time.sleep(1)

	print("Opening AXI_SIM_TO_HW_PIPE")
	axi_sim_to_hw_pipe = open(sim_to_hw_pipename, "r")
	os.set_blocking(axi_sim_to_hw_pipe.fileno(), False)

	print("Opening AXI_HW_TO_SIM_PIPE")
	if not os.path.exists(hw_to_sim_pipename):
		os.mkfifo(hw_to_sim_pipename)
	axi_hw_to_sim_pipe = open(hw_to_sim_pipename, "w")

	# Alternatives for fileevent is to use threads, poll, aysncio
	loop.add_reader(axi_sim_to_hw_pipe.fileno(), read_axi_sim_to_hw_pipe, loop, axi_sim_to_hw_pipe, axi_hw_to_sim_pipe, hw_to_sim_pipename, eth_axi_socket, eth_axi_id, counters)
