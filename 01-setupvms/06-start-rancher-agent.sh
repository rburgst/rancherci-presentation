#!/bin/bash

# switch to rancher agent
eval "$(docker-machine env rancher-agent-01 --shell bash)"

docker run --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher-server:5000/rancher/agent:v1.2.2 http://rancher-server.shared:8080/v1/scripts/8A7AE1CB51BADF319DF0:1483142400000:FicYcr3osdU0K2CSyqHwoA6Whc