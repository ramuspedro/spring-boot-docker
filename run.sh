#!/bin/bash
echo "*** running this project ***\n"

docker build -t spring-docker .

docker run -d -p 8081:8081 --name spring-docker spring-docker

docker exec -ti spring-docker bash