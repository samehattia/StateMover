#!/usr/bin/env python3

from socket import *
from timeit import default_timer as timer
import time
import sys
import threading
import math

def recv_memcached(src_addr, dst_addr, no_packets):

	packet_counter = 0

	with open("pkt.out.txt", 'w') as pkt_out_file:
		while True:
			if packet_counter == no_packets - 1:
				break

			packet = s.recv(2048)

			if packet[12] == 8:
				payload_len = int(packet[13])

				if payload_len != 0:
					payload = packet[14:14+payload_len]
				else:
					payload = packet[14:]
			else:
				#print("Error: received bad packet")
				continue

			no_flits = math.ceil(len(payload)/8)

			for i in range(no_flits):
				flit = bytearray(payload[i*8:i*8+8])
				flit.reverse()
				flit = flit.hex().upper()

				if i == no_flits - 1:
					if len(flit) == 2:
						keep = '01'
					elif len(flit) == 4:
						keep = '03'
					elif len(flit) == 6:
						keep = '07'
					elif len(flit) == 8:
						keep = '0F'
					elif len(flit) == 10:
						keep = '1F'
					elif len(flit) == 12:
						keep = '3F'
					elif len(flit) == 14:
						keep = '7F'
					else:
						keep = 'FF'
					pkt_out_file.write(flit.zfill(16) + ' ' + keep + ' ' + '1 2\n')
				else:
					pkt_out_file.write(flit + ' ' + 'FF' + ' ' + '0 2\n')
				pkt_out_file.flush()

			packet_counter += 1

			if packet_counter % 100 == 0:
				print(str(packet_counter) + " packets received" )

def send_memcached(src_addr, dst_addr, no_packets):
	eth_type = b"\x08"

	packet_counter = 0

	threading.Thread(target=recv_memcached, args=(src_addr, dst_addr, no_packets)).start()

	with open("ALLSEQS_R1-pkt.in.txt", 'r') as pkt_in_file:
		while True:
			line = pkt_in_file.readline()

			if not line or packet_counter == no_packets:
				break

			if line[0] == 'W':
				packet_counter += 1
				if packet_counter % 100 == 0:
					print(str(packet_counter) + " packets sent" )
				payload = bytearray()
				
				time.sleep(0.00001*int(line[1:])) ;#0.000001 0.00001 0.0002
				continue

			words = line.split()
			flit = words[0][1:17]

			flit = bytearray.fromhex(flit)
			flit.reverse()

			if words[1] == '01':
				flit = flit[:1]
			elif words[1] == '03':
				flit = flit[:2]
			elif words[1] == '07':
				flit = flit[:3]
			elif words[1] == '0F':
				flit = flit[:4]
			elif words[1] == '1F':
				flit = flit[:5]
			elif words[1] == '3F':
				flit = flit[:6]
			elif words[1] == '7F':
				flit = flit[:7]

			payload += flit

			if words[2] == '1':
				if len(payload) > 45:
					payload_len = 0
				else:
					payload_len = len(payload)
				s.send((dst_addr + src_addr + eth_type + payload_len.to_bytes(1, byteorder='little') + payload))

# Parse command line arguments into program arguments and options
opts = [opt for opt in sys.argv[1:] if opt.startswith("-")]
args = [arg for arg in sys.argv[1:] if not arg.startswith("-")]

# MAC Addresses
src_addr = b"\xD0\x37\x45\x92\xDA\x25"
dst_addr = b"\x00\x0A\x35\x00\x01\x02"

# A flag to receive all ethernet packets
ETH_P_ALL = 3

s = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ALL))
s.bind(("enxd0374592da25", 0))

start = timer()

send_memcached(src_addr, dst_addr, 3060) ;#1024 3060

end = timer()
print(end - start)
