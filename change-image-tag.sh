#!/bin/bash
IMAGE_REGISTRY_ACCOUNT=$1
IMAGE_NAME=$2
BUILD_NUMBER=$3
sed -i "s/image:.*/image: $IMAGE_REGISTRY_ACCOUNT\/$IMAGE_NAME:$BUILD_NUMBER/g" deployment.yaml
git add deployment.yaml
git config --global user.email "gkwhdtn95051@gmail.com"
git config --global user.name "Hahajongsoo"
git commit -m "Jenkins Build Number - $BUILD_NUMBER"
