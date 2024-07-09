#!/bin/sh

urls="http://example.com http://google.com http://github.com"

monitor_web() {
    url=$1
    response=$(curl -s -o /dev/null -w "%{http_code} %{time_total} %{url_effective}\n" -L $url)
    http_code=$(echo $response | awk '{print $1}')
    time_total=$(echo $response | awk '{print $2}')
    redirected_url=$(echo $response | awk '{print $3}')
    
    if [ $http_code -eq 200 ]; then
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] $url: OK - Status $http_code, Time ${time_total}s"
    elif [ $http_code -eq 301 ]; then
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] $url: REDIRECTED - Status $http_code, Redirected to: $redirected_url"
    else
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] $url: FAILED - Status $http_code"
    fi
}

for url in $urls
do
    monitor_web $url
done

