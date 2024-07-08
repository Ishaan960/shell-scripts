#!/bin/bash

read -p "Please provide the directory location with full path to calculate the full size of all files: " LOCATION

if [ ! -d "$LOCATION" ]; then
    echo "Error: '$LOCATION' is not a valid directory."
    exit 1
fi

ls -l "$LOCATION" | awk '/^-/ {sum += $5; count++} END {
    print "The Number of Files:", count;
    if (count > 0) {
        print "The Total Size of all files:", sum, "Bytes";
        print "The Total Size of all files:", sum/1024/1024, "MB";
        print "The Total Size of all files:", sum/1024/1024/1024, "GB"
}
}'
