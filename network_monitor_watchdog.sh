#!/bin/bash

SERVICE="network_monitor"
DATE=$(date "+%Y-%m-%d %H:%M:%S")
MAILTO="morgan.vigil-hayes@nau.edu"



PID=$(cat /var/run/network_monitor.pid)

if ps -p $PID > /dev/null
then
	# Process already running
	echo "$DATE : network_monitor is running on $PID"

else
	# Process not running
	echo "$DATE : network_monitor not running on $PID"
	bash /home/puebloconnect/network_monitor.sh
	DATE=$(date "+%Y-%m-%d %H:%M:%S")
	PID=$(cat /var/run/network_monitor.pid)
	echo "$DATE : network_monitor was started on $PID"
fi
