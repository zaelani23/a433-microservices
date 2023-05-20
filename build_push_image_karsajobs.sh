#!/bin/bash

# Menentukan variabel nama image dan tag
IMAGE_NAME="ghcr.io/zaelani23/karsajobs"
IMAGE_TAG="latest"

# Membuat Docker image
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag $IMAGE_NAME:$IMAGE_TAG $IMAGE_NAME:$IMAGE_TAG

# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u zaelani23 --password-stdin

# Mengunggah image ke GitHub Packages
docker push $IMAGE_NAME:$IMAGE_TAG