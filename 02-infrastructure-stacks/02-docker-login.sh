#!/bin/bash 
# switch to rancher agent
eval "$(docker-machine env rancher-agent-01 --shell bash)"
docker login rancher-agent-01.shared:5000 -u admin -p admin123