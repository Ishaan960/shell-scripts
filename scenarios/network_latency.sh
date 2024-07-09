#!/bin/sh


hosts="facebook.com google.com github.com twinfjkla.com"


monitor_latency() {
    host=$1
    latency=$(ping -c 1 $host | awk -F'/' 'END { print $5 }')
    if [ -n "$latency" ]; then
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] $host: $latency ms"
    else
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] $host: Host unreachable"
    fi
}


for host in $hosts
do
    monitor_latency $host
done
