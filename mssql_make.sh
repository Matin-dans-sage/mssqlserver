#!/bin/bash

CONTAINER_NAME=mssql
DOCKER_HUB_IMAGES_NAME=mcr.microsoft.com/mssql/server
MSSQL_DOCKER_VOLUME_DIR=sql1data

read -p "Do you wish to install this $CONTAINER_NAME ? (y/n)" yn
if [ $yn = "y" ] 
then

    echo ""
    DOCKER_COMPOSE_PATH=`pwd`

    echo "--"
    echo "Step 1. make oracle docker volume!"
    cd ~
    mkdir $MSSQL_DOCKER_VOLUME_DIR
    chmod 777 $MSSQL_DOCKER_VOLUME_DIR
    docker volume create $MSSQL_DOCKER_VOLUME_DIR
    echo "step 1 complete!"

    echo "Step 2. docker image make and run container."
    cd $DOCKER_COMPOSE_PATH
    docker-compose -f docker-compose.yml up -d
    echo ""
    echo "$CONTAINER_NAME docker run complete!"
    echo ""
    echo "Step 3. base docker hub $DOCKER_HUB_IMAGES_NAME image remove."
    docker rmi $DOCKER_HUB_IMAGES_NAME
    echo "base docker hub mcr.microsoft.com/mssql/server image remove OK!! good luck!"
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
    docker ps --no-trunc |grep $CONTAINER_NAME
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"

else
    echo "this job has been stopped..."
fi