#!/bin/bash

#Author: Abu Sarder
#Date: 23/02/2022

# understanding basic function
#get info about networking from the ifconfig command

net_info="$(ifconfig)"

#parse out the ip address lines using sed

addresses=$(echo "$net_info" | sed -n '/inet / {

s/inet/IP Address:/

s/netmask/\n\t\tSubnet Mask:/

s/broadcast/\n\t\tBroadcast Address:/

p

}')

#format output

echo -e "IP addresses on this computer are:\n$addresses"
