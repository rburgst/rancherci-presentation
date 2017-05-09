#!/bin/bash


# switch to rancher server
eval "$(docker-machine env rancher-server --shell bash)"
docker-compose up -d registry
