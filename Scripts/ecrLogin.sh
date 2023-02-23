#!/bin/bash 

echo "Login to AWS ECR"
docker login -u AWS -p $(aws ecr get-login-password --region us-west-1) 925220130031.dkr.ecr.us-west-1.amazonaws.com
