docker-release
==============

Docker image to release docker images

Usage
=====

Setup once:
```bash

alias docker-release=$(docker run -v $(pwd):/build -v $HOME/.gitconfig:/root/.gitconfig -v /var/run/docker.sock:/docker.sock --rm -ti link0/docker-release $1 $2);

```

Run every build
```bash

# Example image to name and build
IMAGENAME="link0/baseimage"

# Release tag used for git and docker
TAG="1.0.0"

docker-release $IMAGENAME $TAG

```
