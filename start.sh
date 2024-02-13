#!/bin/bash

USER_NAME="root"
CERTIFICATE_DIRECTORY="$HOME/.ssh/"

docker build \
  --build-arg "USER_NAME=$USER_NAME" \
  -t "argon:latest" \
  -f "dockerfile" \
  . \
&& \
docker run \
  -it \
  -v "$(pwd):/tmp/code" \
  -v "$CERTIFICATE_DIRECTORY:/home/$USER_NAME/.ssh:ro" \
  -v "$CERTIFICATE_DIRECTORY:/root/.ssh:ro" \
  --rm "argon:latest"
  