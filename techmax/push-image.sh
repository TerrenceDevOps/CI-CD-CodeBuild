#!/bin/bash

#fail on any error
set-eu

# login to your docker hub account
cat ~/my_password.txt | sudo docker login --username $DOCKER_HUB_USERNAME --password-stdin $DOCKER_HUB_PASSWORD

# use the docker tag command to give the image a new name
 docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

# push the image to your docker hub repository
 docker push $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME
