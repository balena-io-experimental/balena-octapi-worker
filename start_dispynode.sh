#!/bin/sh -e

# Export all the container IP addresses to a file
hostname -I > ip_addresses

# Set the localIP variable to the first address in the ip_addresses list
localIP=$(cat ip_addresses | awk '{print $1}')

# Start dispy with the local (exposed) IP address
dispynode.py -i $localIP -d --daemon
