#!/bin/sh -e

# Set the localIP variable to the first address in the ip_addresses list
localIP=$(hostname -I | awk '{print $1}')

# Start dispy with the local (exposed) IP address
dispynode.py -i $localIP -d --daemon
