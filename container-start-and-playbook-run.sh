#!/bin/bash

function createContainer() {
  CONTAINERNAME=$1
  docker build -t myubuntu .
  docker run -ti --privileged --name $CONTAINERNAME -d myubuntu #-p 2021:22 myubuntu
}

cd docker 
DOCKER_CONTAINER_NAME="utl2agf"
createContainer $DOCKER_CONTAINER_NAME

DOCKER_CONTAINER_NAME="stl2agf"
createContainer $DOCKER_CONTAINER_NAME

DOCKER_CONTAINER_NAME="etl2agf"
createContainer $DOCKER_CONTAINER_NAME

DOCKER_CONTAINER_NAME="prl2agf"
createContainer $DOCKER_CONTAINER_NAME

cd ../
cd ansible

ansible-playbook -i env/local_docker myplaybook.yml ##-vvv ##--tags "ET" -vvv


function shutdownContainer() {
  CONTAINERNAME=$1
  docker stop $CONTAINERNAME
  docker rm $CONTAINERNAME
}

DOCKER_CONTAINER_NAME="utl2agf"
shutdownContainer $DOCKER_CONTAINER_NAME

DOCKER_CONTAINER_NAME="stl2agf"
shutdownContainer $DOCKER_CONTAINER_NAME

DOCKER_CONTAINER_NAME="etl2agf"
shutdownContainer $DOCKER_CONTAINER_NAME

DOCKER_CONTAINER_NAME="prl2agf"
shutdownContainer $DOCKER_CONTAINER_NAME