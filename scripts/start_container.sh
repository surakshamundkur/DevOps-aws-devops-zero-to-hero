#!/bin/bash
set -e
# Pull the Docker image from Amazon ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 921932246560.dkr.ecr.us-east-1.amazonaws.com
docker pull 921932246560.dkr.ecr.us-east-1.amazonaws.com/demo_sample:latest
# Run the Docker image as a container
docker run -d -p 5000:5000 921932246560.dkr.ecr.us-east-1.amazonaws.com/demo_sample:latest