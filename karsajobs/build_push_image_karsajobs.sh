#!/bin/bash

docker build -t platad/karsajobs:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u platad --password-stdin
docker push platad/karsajobs:latest