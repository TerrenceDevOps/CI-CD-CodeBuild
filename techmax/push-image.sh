#!/bin/bash

#fail on any error
set-eu

# login to your docker hub account
cat ~/my_password.txt | sudo docker login --username terrence045 --password-stdin

# use the docker tag command to give the image a new name
sudo docker tag techmax terrence045/techmax

# push the image to your docker hub repository
sudo docker push terrence045/techmax
