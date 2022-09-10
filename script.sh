#!/bin/bash
echo $DOCKER_IMAGE
docker login -u $DOCKER_USER -p $DOCKER_PASSWORD jenkinscicd.azurecr.io
docker run -id --name hello-world $DOCKER_IMAGE /bin/bash
docker ps | grep -i hello-world
if [ $? -eq 0 ] ;then
  echo "container created"
else
  exit 
fi
