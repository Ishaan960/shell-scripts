#!/bin/bash

threshold=90

disk_usage=$(df -h | grep "/dev/sda1" | awk '{print $5}' | cut -d% -f1)

if [ "$disk_usage" -gt "$threshold" ]; then
    echo "High disk usage detected: $disk_usage%"
    echo "Disk usage exceeded threshold at $(date +%Y-%m-%d_%H:%M:%S)." 
else 
    echo "disk usage is less than or equal to threshold limit"
fi
