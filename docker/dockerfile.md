#### [devops-novice](../README.md)

---

# Dockerfile

A Dockerfile is a text document without an extension which contains all the commands in order which Docker daemon can use to create a docker image.

> *Dockerfile* > `build` > *Docker Image* > `run` > *Docker Container*

A Dockerfile is used to create a docker image, which is then used to create a docker container.

A Dockerfile can be thought of as a class, docker image as an object and docker container as a process.

| Docker        |  Java   |
| ------------- | --------|
| Dockerfile    | Class   |
| Docker Image  | Object  |
| Container     | Process |

This analogy makes it simple to understand.

A Dockerfile must be saved as a file `Dockerfile`

---

Let us see a sample `Dockerfile`

```
FROM ubuntu:18.04
RUN apt update
RUN apt install -y nginx
ADD run.sh /
ENTRYPOINT ["bash","run.sh"]
```

Save above file with name `Dockerfile`.

* `FROM` creates layer from `ubuntu:18.04` Docker Image
* `RUN` will execute command `apt update` and `apt install -y nginx` This will create layer of nginx installation. This container will have `nginx` installed
* `ADD` will add `run.sh` in image
* `ENTRYPOINT` will specify action to perform on container start

Each line in Dockerfile will add a new writable container layer to Docker Image.

---

# docker build

The `docker build` command is used to create image from `Dockerfile` and `context`.

The `context` is set of files at a specified location `PATH`

`Dockerfile` and all other needed files/directories needed to create docker image should be present at `PATH`

During the build, the build process sends entire context(recursively) to the docker daemon. So it is recommended to have only required files in the context to create an image.

### Build command to use current directory as context

`docker build .`

By default docker image will be created with `IMAGE_NAME:TAG` as `<none>:<none>` with unique Image ID.

You can specify your `IMAGE_NAME:TAG` using `-t` with `docker build`

`docker build -t IMAGE_NAME:TAG .`

### Build command to specify different location of Dockerfile

`docker build -t IMAGE_NAME:TAG -f /path/to/Dockerfile .`

### Build from git repo

`docker build -t IMAGE_NAME:TAG https://github.com/pathto/repo.git`

The repo.git should contain Dockerfile
