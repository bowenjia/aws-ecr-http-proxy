#!/bin/bash
IMAGE_REPO="nginx"  
IMAGE_VERSION=(1.1 latest)

for index in "${IMAGE_VERSION[@]}";
  do
    echo $IMAGE_REPO
    docker tag nginx $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO:$index
    docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO:$index
    echo $index;
  done    
        
docker tag nginx:latest 072263453500.dkr.ecr.ap-southeast-2.amazonaws.com/nginx:latest
