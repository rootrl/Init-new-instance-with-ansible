#!/usr/bin/env bash

curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh --mirror Aliyun

# start up docker 
systemctl enable docker
systemctl start docker

# docker user group

groupadd docker
usermod -aG docker $USER
