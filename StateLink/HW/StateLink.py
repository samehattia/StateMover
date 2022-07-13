#!/usr/bin/env python3

from socket import *
import asyncio

# StateLink Scripts
import StateLink_AXI
import StateLink_AXIS

AXI_LINK = 1
AXIS_TX_LINK = 1
AXIS_RX_LINK = 1

AXI_TIMESTAMP_MODE = 1

AXI_SIM_TO_HW_PIPENAME = "/tmp/axi_sim_to_hw_pipe"
AXI_HW_TO_SIM_PIPENAME = "/tmp/axi_hw_to_sim_pipe"

AXIS_TX_SIM_TO_HW_PIPENAME = "/tmp/axis_tx_sim_to_hw_pipe"
AXIS_TX_HW_TO_SIM_PIPENAME = "/tmp/axis_tx_hw_to_sim_pipe"

AXIS_RX_SIM_TO_HW_PIPENAME = "/tmp/axis_rx_sim_to_hw_pipe"
AXIS_RX_HW_TO_SIM_PIPENAME = "/tmp/axis_rx_hw_to_sim_pipe"

# Ethernet AXI Parameters
# Ethernet Interface
ETH_INF = "enxd0374592da25"

# MAC Addresses
ETH_SRC_ADDR = b"\xD0\x37\x45\x92\xDA\x25"
ETH_DST_ADDR = b"\x00\x0A\x35\x00\x01\x02"

# Ethernet type for ethernet_axi transactions
ETH_TYPE = b"\x7A\x00"

class transaction_counters:

	AXI_WRITE_COMMAND_COUNTER = 0
	AXI_READ_COMMAND_COUNTER = 0
	AXIS_WRITE_COMMAND_COUNTER = 0
	AXIS_READ_COMMAND_COUNTER = 0

# FIXME: parse the SM_Param.tcl to overwrite the default parameters
def parse_param_file ():
	global AXI_LINK, AXIS_TX_LINK, AXIS_RX_LINK

	with open("SM_Param.tcl", 'r') as param_file:
		
		# Read the file
		for line in param_file:

			words = line.split()
			
			# Skip commented-out line
			if len(words) == 0 or words[0][0] == '#':
				continue

			# Overwrite AXI_LINK, AXIS_TX_LINK, and AXIS_RX_LINK
			if words[0] == "set":
				
				if words[1] == "AXI_LINK":
					AXI_LINK = int(words[2].rstrip('"').lstrip('"'))

				elif words[1] == "AXIS_TX_LINK":
					AXIS_TX_LINK = int(words[2].rstrip('"').lstrip('"'))

				elif words[1] == "AXIS_RX_LINK":
					AXIS_RX_LINK = int(words[2].rstrip('"').lstrip('"'))

def StateLink ():

	parse_param_file()

	loop = asyncio.get_event_loop()
	counters = transaction_counters()

	# Create Ethernet AXI Socket
	eth_axi_socket = socket(AF_PACKET, SOCK_RAW, htons(int(ETH_TYPE.hex(), 16)))
	eth_axi_socket.bind((ETH_INF, 0))

	eth_axi_id = 0

	for i in range(AXI_LINK):
		axi_sim_to_hw_pipename = AXI_SIM_TO_HW_PIPENAME + "_" + str(i)
		axi_hw_to_sim_pipename = AXI_HW_TO_SIM_PIPENAME + "_" + str(i)

		StateLink_AXI.setup_axi_link(loop, axi_sim_to_hw_pipename, axi_hw_to_sim_pipename, eth_axi_socket, eth_axi_id, counters)

		eth_axi_id += 1

	# The Ethernet AXI ID of AXIS interfaces cannot start with 0 to prevent collision 
	# between the Ethernet AXI socket and the ones created for each RX AXIS interface
	eth_axi_id = max(eth_axi_id, 1)

	for i in range(AXIS_TX_LINK):
		axis_tx_sim_to_hw_pipename = AXIS_TX_SIM_TO_HW_PIPENAME + "_" + str(i)
		axis_tx_hw_to_sim_pipename = AXIS_TX_HW_TO_SIM_PIPENAME + "_" + str(i)

		StateLink_AXIS.setup_axis_tx_link(loop, axis_tx_sim_to_hw_pipename, axis_tx_hw_to_sim_pipename, eth_axi_socket, eth_axi_id, counters)

		eth_axi_id += 1

	eth_axi_id -= AXIS_TX_LINK

	for i in range(AXIS_RX_LINK):
		axis_rx_sim_to_hw_pipename = AXIS_RX_SIM_TO_HW_PIPENAME + "_" + str(i)
		axis_rx_hw_to_sim_pipename = AXIS_RX_HW_TO_SIM_PIPENAME + "_" + str(i)

		# Create Ethernet AXIS RX Socket
		eth_axis_rx_socket = socket(AF_PACKET, SOCK_RAW, htons(int(ETH_TYPE.hex(), 16) + eth_axi_id))
		eth_axis_rx_socket.bind((ETH_INF, 0))

		StateLink_AXIS.setup_axis_rx_link(loop, axis_rx_sim_to_hw_pipename, axis_rx_hw_to_sim_pipename, eth_axis_rx_socket, eth_axi_id, counters)

		eth_axi_id += 1

	print("Entering Event Loop")
	try:
		loop.run_forever()
	except KeyboardInterrupt:
		pass

	if AXI_LINK != 0:
		print(str(counters.AXI_WRITE_COMMAND_COUNTER) + " AXI Write Transactions")
		print(str(counters.AXI_READ_COMMAND_COUNTER) + " AXI Read Transactions")

	if AXIS_TX_LINK != 0:
		print(str(counters.AXIS_WRITE_COMMAND_COUNTER) + " AXIS Send Transactions")

	if AXIS_RX_LINK != 0:
		print(str(counters.AXIS_READ_COMMAND_COUNTER) + " AXIS Receive Transactions")

def main():
    StateLink()

if __name__ == "__main__":
    main()
