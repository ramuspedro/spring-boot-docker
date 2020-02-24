#!/bin/bash
echo "*** Cleaning this project ***\n"

docker stop spring-docker
docker rm spring-docker
docker rmi spring-docker

echo "\n*** Finished ***"