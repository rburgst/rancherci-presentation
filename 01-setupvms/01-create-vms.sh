#!/bin/bash
#DRIVER=virtualbox
DRIVER=parallels
REGISTRY="rancher-agent-01"
PORT="5000"
REGISTRY2="rancher-server"

docker-machine create -d $DRIVER --$DRIVER-memory "3000" --$DRIVER-disk-size "10000" --engine-insecure-registry $REGISTRY:$PORT --engine-insecure-registry $REGISTRY2:$PORT rancher-server
docker-machine create -d $DRIVER --$DRIVER-memory "7000" --$DRIVER-disk-size "30000" --engine-insecure-registry $REGISTRY:$PORT --engine-insecure-registry $REGISTRY2:$PORT --$DRIVER-cpu-count "2" rancher-agent-01

