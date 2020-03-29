#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=wangzuowen/ml_project
deployment_name=deployment

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=docker.io/${dockerpath} --port=80 $deployment_name

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/${deployment_name} 8000:80