#!/bin/sh

PRIVATE_IP=`ip a | grep 172 | awk '{print $2}' | sed 's#/.*$##'`

echo -e "Running a command\n /bin/thanos $@ --cluster.address="${PRIVATE_IP}:10900""
exec /bin/thanos $@ --cluster.address="${PRIVATE_IP}:10900"