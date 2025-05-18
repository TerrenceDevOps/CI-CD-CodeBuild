#!/bin/bash
set -e  # Exit on any error
set -x  # Print commands for debugging

# Define image name (replace with your Docker Hub username/repo)
IMAGE_NAME=terrence045/techmax-as

# Authenticate with Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Tag and push the image
docker tag techmax-app:latest $IMAGE_NAME:latest
docker push $IMAGE_NAME:latest
