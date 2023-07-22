#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
# dockerpath=<>
dockerpath=leopoldwalther/housing-price-prediction

# Run the Docker Hub container with kubernetes
kubectl create deploy housing-price-prediction --image=$dockerpath:latest

# List kubernetes pods
kubectl get pods
podname=$(kubectl get pods | grep -o "housing-price-prediction-.*" | awk '{print $1}')

# Forward the container port to a host
kubectl port-forward pod/$podname 8000:80
