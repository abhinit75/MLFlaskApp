#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=abhiai/mlflaskapp

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run $dockerpath:latest --image=abhiai/mlflaskapp --port=80

# Step 3:
# List kubernetes pods
kubectl get deployments

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/prediction-pod 8000:80
