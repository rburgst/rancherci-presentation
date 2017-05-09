#!/bin/bash

# switch to rancher server
eval "$(docker-machine env rancher-server --shell bash)"
docker login rancher-server:5000 -u username -p password

eval "$(docker-machine env rancher-agent-01 --shell bash)"
docker login rancher-server:5000 -u username -p password