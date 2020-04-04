#!/bin/bash

DATE=$(date "+%Y_%m_%d_%H")
LOCATION="SANTA_CLARA"
ifconfig >> /mnt/PUEBLOCONNECT/${LOCATION}_${DATE}_current_network_iface_info.log
