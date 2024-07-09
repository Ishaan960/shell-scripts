#!/bin/bash
service_name="jenkins"

if service "$service_name" status > /dev/null; then
    sudo service "$service_name" restart
    echo "Service $service_name restarted"
else
    echo "Service $service_name is not running"
fi
