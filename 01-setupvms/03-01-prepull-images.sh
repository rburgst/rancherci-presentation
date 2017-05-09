#!/bin/bash

# switch to rancher server
eval "$(docker-machine env rancher-server --shell bash)"

docker pull rancher/server:latest
docker tag rancher/server:latest rancher-server:5000/rancher/server:latest
docker push rancher-server:5000/rancher/server:latest

docker tag konradkleine/docker-registry-frontend:v2 rancher-server:5000/konradkleine/docker-registry-frontend:v2
docker push rancher-server:5000/konradkleine/docker-registry-frontend:v2

# switch to rancher agent
eval "$(docker-machine env rancher-agent-01 --shell bash)"

docker pull rancher/agent:v1.2.2
docker pull sonatype/nexus3
docker pull wbrauneis/rancher-nexus-confd:latest
docker pull wbrauneis/rancher-nexus-provision:latest
docker pull wbrauneis/rancher-jenkins-seed:latest
docker pull openfrontier/gerrit
docker pull rancher/jenkins-plugins:v0.1.1
docker pull rancher/jenkins-slave:latest
docker pull jenkins:alpine
docker pull busybox
docker pull openjdk:8-jdk-alpine
docker pull openjdk:8-jre-alpine
docker pull openjdk:8-jdk
docker pull postgres:alpine
docker pull monostream/rancher-cli
docker pull endeveit/docker-jq

docker tag rancher/agent:v1.2.2 rancher-server:5000/rancher/agent:v1.2.2
docker tag sonatype/nexus3 rancher-server:5000/sonatype/nexus3
docker tag wbrauneis/rancher-nexus-confd:latest rancher-server:5000/wbrauneis/rancher-nexus-confd:latest
docker tag wbrauneis/rancher-nexus-provision:latest rancher-server:5000/wbrauneis/rancher-nexus-provision:latest
docker tag wbrauneis/rancher-jenkins-seed:latest rancher-server:5000/wbrauneis/rancher-jenkins-seed:latest
docker tag openfrontier/gerrit rancher-server:5000/openfrontier/gerrit
docker tag rancher/jenkins-plugins:v0.1.2 rancher-server:5000/rancher/jenkins-plugins:v0.1.2
docker tag rancher/jenkins-slave:latest rancher-server:5000/rancher/jenkins-slave:latest
docker tag jenkins:alpine rancher-server:5000/jenkins:alpine
docker tag busybox rancher-server:5000/busybox
docker tag openjdk:8-jdk-alpine rancher-server:5000/openjdk:8-jdk-alpine
docker tag openjdk:8-jre-alpine rancher-server:5000/openjdk:8-jre-alpine
docker tag openjdk:8-jdk rancher-server:5000/openjdk:8-jdk
docker tag postgres:alpine rancher-server:5000/postgres:alpine
docker tag monostream/rancher-cli rancher-server:5000/monostream/rancher-cli
docker tag endeveit/docker-jq rancher-server:5000/endeveit/docker-jq

docker push rancher-server:5000/rancher/agent:v1.2.2
docker push rancher-server:5000/sonatype/nexus3
docker push rancher-server:5000/wbrauneis/rancher-nexus-confd:latest
docker push rancher-server:5000/wbrauneis/rancher-nexus-provision:latest
docker push rancher-server:5000/wbrauneis/rancher-jenkins-seed:latest
docker push rancher-server:5000/openfrontier/gerrit
docker push rancher-server:5000/rancher/jenkins-plugins:v0.1.2
docker push rancher-server:5000/rancher/jenkins-slave:latest
docker push rancher-server:5000/jenkins:alpine
docker push rancher-server:5000/busybox
docker push rancher-server:5000/openjdk:8-jdk-alpine
docker push rancher-server:5000/openjdk:8-jre-alpine
docker push rancher-server:5000/openjdk:8-jdk
docker push rancher-server:5000/postgres:alpine
docker push rancher-server:5000/monostream/rancher-cli
docker push rancher-server:5000/endeveit/docker-jq