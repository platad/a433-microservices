#!/bin/bash

docker build -t item-app:v1 .
#perintah untuk membuat docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app dan memiliki tag v1

docker images
#Melihat daftar image di lokal

docker tag item-app:v1 ghcr.io/platad/item-app:v1
#Mengubah nama image agar sesuai dengan format github packages

echo $PAT | docker login ghcr.io --username platad --password-stdin
#Login ke github package

docker push ghcr.io/platad/item-app:v1
#Mengunggah image ke github packages