#!/bin/bash
#Author: Abu Sarder
#Date: 24/02/2022

# execute ./IpInfo.sh in variable

ip_only="$(./IpInfo.sh)"

#print only the lines with IpAddresses only

IPadd=$(echo "$ip_only" | sed -n '{
    /Subnet/d
    /Broadcast/d
    p 
}')
echo "Display only the lines with $IPadd"

#Reference: How To Use The Sed Command In Linux With Examples:https://www.youtube.com/watch?v=6RpYGSfU7Lg