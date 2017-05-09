#!/bin/bash

docker build -t rburgst/rancher-cli-configured .
docker tag rburgst/rancher-cli-configured rancher-server:5000/rburgst/rancher-cli-configured