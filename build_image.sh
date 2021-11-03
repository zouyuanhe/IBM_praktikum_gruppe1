#!/bin/bash -e
image_name=app.kubernetes.io/component=ibm-praktikum-gruppe-1




image_tag=latest
full_image_name=${image_name}:${image_tag}

cd "$(dirname "$0")"
docker build -t "${full_image_name}" .
docker push "${full_image_name}"