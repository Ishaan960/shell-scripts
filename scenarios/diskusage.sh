#!/bin/bash

threshold=100
disk_usage=$(df -h | grep "/dev/sda1" | awk '{print $5}' | tr -d '%')

if [ "$disk_usage" -gt "$threshold" ]; then
    echo "Disk space usage exceeded $threshold%"
    # Send alert here
fi
