# Spring boot docker

## Run local dockerfile

```sh
# build docker images
$ docker build -t spring-docker .

# run docker for spring
$ docker run -d -p 8001:8001 --name spring-docker spring-docker tail -f /dev/null

# command line docker
$ docker exec -ti spring-docker bash
```

## Docker commands

```sh
# Run a docker of debian as example
$ docker run --name docker-debian debian tail -f /dev/null

$ docker exec -ti docker-debian bash
```

## Install Java ubuntu

```sh
# install java run envionment
$ apt install default-jre

# install java development kit
$ apt install default-jdk

# verify java version
$ java -version

# verify javac version
$ javac -version
```

## Docker cheat sheet

```sh
# clean unused images
$ docker image prune -a

# clean unused volumes
$ docker system prune --volumes
```
