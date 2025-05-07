#!/bin/bash

# Log in to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 533623287468.dkr.ecr.us-east-1.amazonaws.com

# Pull the latest image
docker pull 533623287468.dkr.ecr.us-east-1.amazonaws.com/sample-reactapp:stage-latest

# Run the Docker container 
docker run -dit -p 3005:3000 --restart on-failure:5 --name sample-reactapp 533623287468.dkr.ecr.us-east-1.amazonaws.com/sample-reactapp:stage-latest