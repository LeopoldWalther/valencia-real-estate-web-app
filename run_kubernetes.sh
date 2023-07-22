#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
# dockerpath=<>
dockerpath=leopoldwalther/valencia-real-estate-report

# Run the Docker Hub container with kubernetes
kubectl create deploy valencia-real-estate-report --image=$dockerpath:latest

# List kubernetes pods
kubectl get pods
podname=$(kubectl get pods | grep -o "valencia-real-estate-report-.*" | awk '{print $1}')

# Forward the container port to a host
kubectl port-forward pod/$podname 80:80
