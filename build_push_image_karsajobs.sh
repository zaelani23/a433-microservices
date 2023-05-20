#!/bin/bash

# Membuat Docker image
docker build -t ghcr.io/zaelani23/karsajobs:latest .

# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u zaelani23 --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/zaelani23/karsajobs:latest