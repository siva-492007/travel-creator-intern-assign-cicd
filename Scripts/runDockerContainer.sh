#!/bin/bash 

# Pull image from ECR repo
echo "Pulling image from ECR..."
docker pull 925220130031.dkr.ecr.us-west-1.amazonaws.com/reactapp-repo:latest

# Tag ECR image with custom name
echo "Tagging ECR image..."
docker tag 925220130031.dkr.ecr.us-west-1.amazonaws.com/reactapp-repo:latest react-app


# stop the running old container
ID=$(docker ps -q --filter ancestor=react-app)
if [ "ID" ]; then
        echo "Stopping old container..." 
        docker stop $ID
        docker rm $ID
fi

# run the container from new image pulled from ECR
echo "Starting new container...."
docker run -d -p 80:80 react-app