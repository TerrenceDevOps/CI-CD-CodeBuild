#!/bin/bash
set -eu  # Exit on error and undefined variables
set -x   # Print commands for debugging

# Define image tag
IMAGE_NAME=techmax-app

# Build the Docker image using Dockerfile in techmax directory
docker build -t $IMAGE_NAME:latest -f techmax/Dockerfile .
