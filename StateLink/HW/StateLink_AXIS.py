#!/usr/bin/env python3

import os
import os.path
import time
import StateLink

def perform_ethernet_axis_transaction (eth_axi_socket, eth_axi_id, axi_command, axi_len=0, axi_data=""):
	src_addr = StateLink.ETH_SRC_ADDR
	dst_addr = StateLink.ETH_DST_ADDR
	eth_type = StateLink.ETH_TYPE

	write_command = b"\x57"
	read_command = b"\x52"

	if axi_command == "write":

		axi_data = bytearray.fromhex(axi_data)
		axi_data.reverse()

		# Send write command to FPGA
		eth_axi_socket.send((dst_addr + src_addr + eth_type + eth_axi_id.to_bytes(1, byteorder='little') + write_command + axi_len.to_bytes(8, byteorder='little') +  bytes(axi_data)))

		packet = eth_axi_socket.recv(1024)

		if packet[12:14] == eth_type and packet[14:15] == eth_axi_id.to_bytes(1, byteorder='little') and packet[15:16] == write_command:
			recv_len = packet[16:20]
			recv_data = packet[20:]
		else:
			print("Error: received bad packet " + packet.hex())
			return

		# Check Ethernet AXI response
		if recv_data[0:4] != b"\xEF\xBE\xAD\xDE":
			print("Warning: Incorrect Ethernet AXI response")

	# Send read command to FPGA to inform that StateLink is up (ready to receive rx transactions)
	# This command has no response
	elif axi_command == "read":

		# Send read command to FPGA
		eth_axi_socket.send((dst_addr + src_addr + eth_type + eth_axi_id.to_bytes(1, byteorder='little') + read_command + axi_len.to_bytes(8, byteorder='little')))

	# Recv the actual rx transactions
	elif axi_command == "recv":

		packet = eth_axi_socket.recv(3000)

		if packet[14:15] == eth_axi_id.to_bytes(1, byteorder='little') and packet[15:16] == read_command:
			recv_data = packet[16:]
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

		packet_len = int(recv_data[signature_index + 8:signature_index + 16], 16)
		packet_data = recv_data[signature_index + 16:]

		return packet_data, packet_len

def read_axis_rx_hw_packet (loop, hw_to_sim_pipe, sim_to_hw_pipe, eth_axis_rx_socket, eth_axi_id, counters):

	os.set_blocking(sim_to_hw_pipe.fileno(), True)
	
	# Receive length (RLR) @0x24 --> OUTPUT 0000003C
	#create_hw_axi_txn rd_txn [get_hw_axis $jtag_axi_lite] -address 44A0_0024 -len 1 -type read -force
	# Receive Data FIFO Data (TDFD) @0x1000 hw_axi_2 --> OUTPUT 0000000000000000000000000000000041612a000000deadbeef0000000000000000000000000a0000000000000801000180220825da924537d0020100350a00
	#create_hw_axi_txn rd_txn_2 [get_hw_axis $jtag_axi] -address 44A0_1000 -len $burst_len -type read -force
	packet, packet_len = perform_ethernet_axis_transaction (eth_axis_rx_socket, eth_axi_id, "recv")

	hw_to_sim_pipe.write("R " + str(packet_len) + " " + packet + "\0")
	hw_to_sim_pipe.flush()

	counters.AXIS_READ_COMMAND_COUNTER += 1

	ack = sim_to_hw_pipe.readline()

	os.set_blocking(sim_to_hw_pipe.fileno(), False)

	# Send read command to FPGA to inform that StateLink is ready to receive more rx transactions
	perform_ethernet_axis_transaction (eth_axis_rx_socket, eth_axi_id, "read")

def read_axis_tx_sim_to_hw_pipe (loop, sim_to_hw_pipe, hw_to_sim_pipe, eth_axi_socket, eth_axi_id, counters):

	data = (sim_to_hw_pipe.readline()).rstrip('\x00').split()

	if not data:
		sim_to_hw_pipe.close()
		print("Pipe Closed")
		loop.stop()
		return

	command = data[0]

	if command == "W":

		packet_len = int(data[1])
		packet_data = data[2]

		# Transmit Data FIFO Data (TDFD) @0x0 hw_axi_2
		#create_hw_axi_txn wr_txn_2 [get_hw_axis $jtag_axi] -address 44A0_0000 -len $burst_len -type write -force -data $packet_data
		# Transmit Length Register (TLR) @0x14 <-- Input 0000003C
		#create_hw_axi_txn wr_txn [get_hw_axis $jtag_axi_lite] -address 44A0_0014 -len 1 -type write -force -data $packet_len_hex
		perform_ethernet_axis_transaction (eth_axi_socket, eth_axi_id, "write", packet_len, packet_data)

		hw_to_sim_pipe.write("WRITE DATA " + "\0")
		hw_to_sim_pipe.flush()

		counters.AXIS_WRITE_COMMAND_COUNTER += 1

### Open the fifo, Open the RX socket and set up event-driven input from it.
def setup_axis_rx_link (loop, sim_to_hw_pipename, hw_to_sim_pipename, eth_axis_rx_socket, eth_axi_id, counters):

	while 1:
		if os.path.exists(sim_to_hw_pipename):
			break
		time.sleep(1)

	print("Opening AXIS_RX_SIM_TO_HW_PIPE")
	axis_rx_sim_to_hw_pipe = open(sim_to_hw_pipename, "r")
	os.set_blocking(axis_rx_sim_to_hw_pipe.fileno(), False)

	print("Opening AXIS_RX_HW_TO_SIM_PIPE")
	if not os.path.exists(hw_to_sim_pipename):
		os.mkfifo(hw_to_sim_pipename)
	axis_rx_hw_to_sim_pipe = open(hw_to_sim_pipename, "w")

	# Alternatives for fileevent is to use threads, poll, aysncio
	loop.add_reader(eth_axis_rx_socket, read_axis_rx_hw_packet, loop, axis_rx_hw_to_sim_pipe, axis_rx_sim_to_hw_pipe, eth_axis_rx_socket, eth_axi_id, counters)

	# Send read command to FPGA to inform that StateLink is up (ready to receive rx transactions)
	perform_ethernet_axis_transaction (eth_axis_rx_socket, eth_axi_id, "read")

### Open the fifo, set up event-driven input from it.
def setup_axis_tx_link (loop, sim_to_hw_pipename, hw_to_sim_pipename, eth_axi_socket, eth_axi_id, counters):

	while 1:
		if os.path.exists(sim_to_hw_pipename):
			break
		time.sleep(1)

	print("Opening AXIS_TX_SIM_TO_HW_PIPE")
	axis_tx_sim_to_hw_pipe = open(sim_to_hw_pipename, "r")
	os.set_blocking(axis_tx_sim_to_hw_pipe.fileno(), False)

	print("Opening AXIS_TX_HW_TO_SIM_PIPE")
	if not os.path.exists(hw_to_sim_pipename):
		os.mkfifo(hw_to_sim_pipename)
	axis_tx_hw_to_sim_pipe = open(hw_to_sim_pipename, "w")

	# Alternatives for fileevent is to use threads, poll, aysncio
	loop.add_reader(axis_tx_sim_to_hw_pipe.fileno(), read_axis_tx_sim_to_hw_pipe, loop, axis_tx_sim_to_hw_pipe, axis_tx_hw_to_sim_pipe, eth_axi_socket, eth_axi_id, counters)
