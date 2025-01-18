#!/bin/bash
trap "exit" SIGINT

# 첫 번째 매개 변수를 INTERVAL 변수로 저장
INTERVAL=$1
echo "Configured to generate new fortune every $INTERVAL seconds"

mkdir -p /var/htdocs

while :
do
    echo "$(date): Writing fortune to /var/htdocs/index.html"
    /usr/games/fortune > /var/htdocs/index.html
    sleep $INTERVAL
done
