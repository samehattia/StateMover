#include <iostream>

#include <sys/socket.h>
#include <linux/if_packet.h>
#include <net/ethernet.h>
#include <errno.h>
#include <string.h>
#include <sys/ioctl.h>
#include <net/if.h>
#include <arpa/inet.h>

int main() {
	int sock_fd;
	sock_fd = socket(AF_PACKET,SOCK_RAW,htons(ETH_P_ALL));

	if(sock_fd < 0) {
		printf("error in socket\n");
		return -1;
	}

	//setsockopt(sock_fd , SOL_SOCKET , SO_BINDTODEVICE , "enxd0374592da25" , strlen("enxd0374592da25")+ 1 );
	std::string if_name = "enxd0374592da25";
	struct ifreq ifr;
	size_t if_name_len = strlen(if_name.c_str());
	if (if_name_len < sizeof(ifr.ifr_name)) {
    		memcpy(ifr.ifr_name, if_name.c_str(), if_name_len);
    		ifr.ifr_name[if_name_len] = 0;
	} else {
    		fprintf(stderr, "interface name is too long\n");
    		exit(1);
	}

	if (ioctl(sock_fd,SIOCGIFINDEX, &ifr) == -1) {
    		perror("ioctl");
    		exit(1);
	}
	int ifindex=ifr.ifr_ifindex;

	struct sockaddr_ll addr = {0};
	addr.sll_family = AF_PACKET;
	addr.sll_ifindex = ifindex;
	addr.sll_protocol = htons(ETH_P_ALL);

	if (bind(sock_fd, (struct sockaddr*)&addr, sizeof(addr)) == -1) {
    		perror("bind");
		exit(1);
	}

	int tx_len = 26;
	unsigned char sendbuf[26] = {
			0x00, 0x0a, 0x35, 0x00, 0x01, 0x02,
			0xd0, 0x37, 0x45, 0x92, 0xda, 0x25,
			0x7a, 0x00, 
			0x00, 
			0x52, 
			0x02, 0x00, 0x00, 0x00,
			0x02, 0x00, 0x00, 0x00,
	};

	send(sock_fd, sendbuf, tx_len, 0);


	return 0;
}
