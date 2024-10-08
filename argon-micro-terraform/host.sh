#!/bin/sh

USER_NAME="root"
CERTIFICATE_DIRECTORY="$HOME/.ssh/"
TAG_NAME=argon-micro
TAG_REVISION=latest

docker build \
  --build-arg "USER_NAME=$USER_NAME" \
  -t "$TAG_NAME:$TAG_REVISION" \
  -f "dockerfile" \
  . \
&& \
docker run \
  -it \
  -v "$(pwd):/tmp/code" \
  -v "$CERTIFICATE_DIRECTORY:/home/$USER_NAME/.ssh:ro" \
  -v "$CERTIFICATE_DIRECTORY:/root/.ssh:ro" \
  -v "$HOME/.aws:/root/.aws" \
  -v "$HOME/.aws:/home/$USER_NAME/.aws" \
  -v "/var/run/docker.sock:/var/run/docker.sock" \
  --rm "$TAG_NAME:$TAG_REVISION"