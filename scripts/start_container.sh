#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull 921932246560.dkr.ecr.us-east-1.amazonaws.com/demo_sample

# Run the Docker image as a container
docker run -d -p 5000:5000 921932246560.dkr.ecr.us-east-1.amazonaws.com/demo_sample
