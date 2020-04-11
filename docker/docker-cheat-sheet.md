#### [devops-novice](../README.md)


---

# Docker CLI Cheatsheet
<img src="./images/docker.png" alt="Docker"
	title="Docker" width="150" height="130" />

---

## Docker Image

### Build

Should be run where `Dockerfile` is present

`docker build -t image-name:tag .`

### List

`docker image ls`

### Remove

`docker image rm image-name:tag`

---

## Share

### Login

`docker login docker-repo-url -u username -p password `

### Pull

`docker pull image-name:tag`

### Retag/Rename

`docker tag image-name:tag new-image-name:new-tag`

### Push

`docker push image-name:tag`

---

## Docker Container

### Run

`docker container run image-name:tag`

##### Run with options

Custom image name

`docker run --name container-name image-name:tag`

Expose port

`docker run -p 8080:8080 --name container-name image-name:tag`

Mount host path

`docker run -v /path1/on/host:/path1/inside/container  -v /path2/on/host:/path2/inside/container -p 8080:8080 --name container-name image-name:tag`

Run with environment variables

`docker run -p 8080:8080 --name container-name -e VAR1_NAME="value" -e VAR1_NAME="value" image-name:tag`

### List

`docker container ls`

`docker ps -a`

### Stop

`docker container stop container-name`

### Start

`docker container start container-name`

### Remove

`docker container rm container-name`

### Stop and remove

`docker container rm -f container-name`

### Stop all running containers

`docker container rm -f $(docker ps -aq)`


### Logs

Watch docker logs

`docker container  logs -f --tail 100 container-name`


### Exec

Execute commands inside running container

`docker exec -it container-name bash`

`docker exec -it container-name sh`

`docker exec -it container-name <command>`


### File Copy

Copy file from running container to host

`docker cp container-name:/source/path/in/container /destination/path/on/host`

Copy file from host to running container

`docker cp /source/path/on/host container-name:/destination/path/in/container`


### Diff

List the changed files and directories in a container᾿s filesystem since the container was created. A: added, D: deleted, C: changed

`docker diff container-name`

---

## Docker system

### Disk Usage

`docker system df`

### System Info

`docker system info`

### Remove unused data

`docker system prune`

`docker system prune --all`

`docker system prune --volumes`

### Docker container information

`docker inspect container-name`

---

_[Docker](https://www.docker.com/)_

#### [devops-novice](../README.md)
