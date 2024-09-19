#!/bin/bash

# Update the package list
sudo apt-get update

sudo apt install docker.io -y
sudo chmod 666 /var/run/docker.sock

docker run -d -p 8081:8081 --name nexus sonatype/nexus3
