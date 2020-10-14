#### [devops-novice](../README.md)

---

# Docker Hands-on
<img src="./images/docker.png" alt="Docker"
	title="Docker" width="150" height="130" />

---

## Introduction
Just execute the commands and you will get taste of Docker.

We will use docker images present on [docker hub](https://hub.docker.com/)

Later we will create a simple docker image and play with it.

---
## Try out different docker commands

We will use simple `hello-world` image from docker hub to try out basic commands

### Docker Basic commands

Commands covered:

`pull, push, ls, ps, run, logs, start, stop, restart, rm `

#### docker pull

`docker pull hello-world`

docker pull will always pull 'latest' tag if not specified.

#### docker push

You will need docker hub account for this (Can skip for now)

`docker push hello-world`

#### list docker images

`docker images`

`docker image ls`

#### run docker container

We will use `hello-world` image to try out docker commands

`docker run hello-world`

#### run docker container with options

Give name of your choice to the container

`docker run --name mycontainer hello-world`

#### list running containers
`docker ps`

`docker container ls`

#### list all containers
`docker ps -a`

`docker container ls -a`

#### get container logs
`docker logs mycontainer`

You can stream the logs using `-f` or `--follow`

`docker logs -f mycontainer`

`docker logs --follow mycontainer`

#### start/stop/restart container

`docker start mycontainer`

`docker stop mycontainer`

`docker restart mycontainer`

#### remove container

Container must be stopped before removing

`docker rm mycontainer`

#### forcefully remove a running container

`docker rm -f mycontainer`

`docker rm --force mycontainer`

---
### Docker run advanced commands

The docker run command first creates a writeable container layer over the specified image, and then starts it using the specified command.

We have multiple options available with `docker run` which can be used to run docker container.

#### Running apache tomcat image

`docker run -it --name mytomcat --rm -p 8888:8080 tomcat:9.0`

| option        |  Description   |
| ------------- | --------|
| --interactive , -i  | Keep STDIN open even if not attached  |
| --tty , -t  | Allocate a pseudo-TTY  |
| --rm  | Automatically remove the container when it exits  |
| --publish , -p | Publish a container’s port(s) to the host   |

Visit http://localhost:8888

You should get 404

This means that your container is up and running.

You can try out commands in above section on this container.

Press `Ctrl+c` to exit the container.

---
#### Running MySQL image

---
## Creating and running your own docker image
Create a directory and use it as docker context

```
mkdir docker-learn
cd docker-learn
```

Create a file named `Dockerfile`

Add below lines to the file

```
FROM alpine
ENTRYPOINT ["sh","run.sh"]
```

Create a file named `run.sh`

Add below lines to the file

```
#!/bin/sh
echo "Yay! I have created a docker image and started container using it"

```

Execute below command to create docker image

```
docker build -t myfirstimage .
```

This will create an image named `myfirstimage`

---

### Running docker image

We will run the docker image created above

Execute below command to run the image

```
docker run --name myfirstcontainer myfirstimage
```

You should get output as

```
Yay! I have created a docker image and started container using it
```

---
Next: [Docker Cheatsheet](docker-cheat-sheet.md)

---

_[Docker](https://www.docker.com/)_

#### [devops-novice](../README.md)
