#!/bin/bash

docker build -t platad/karsajobs-ui:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u platad --password-stdin
docker push platad/karsajobs-ui:latest