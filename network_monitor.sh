#!/bin/bash

DATE=$(date "+%Y_%m_%d_%H")
tcpdump -i eth0 -s 65535 -w /mnt/PUEBLOCONNECT/%Y_%m_%d_%H.pcap -G 3600 &
echo $! > /var/run/network_monitor.pid
