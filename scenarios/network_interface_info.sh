#!/bin/bash

read -p "Enter the network interface name (e.g., eth0, enp0s3): " network_interface

if ! ifconfig "$network_interface" &> /dev/null; then
    echo "Error: Network interface '$network_interface' not found."
    exit 1
fi

echo "Network Interface Information for $network_interface:"
echo "---------------------------------------------------"
ifconfig "$network_interface"
