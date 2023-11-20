#!/bin/zsh

WORKING_DIRECTORY="/home/code/argon"
CERTIFICATE_DIRECTORY="$HOME/.ssh/"

docker build \
  -t "argon:latest" \
  -f "dockerfile" \
  . \
  && \
docker run \
  -it \
  -v "$(pwd):$WORKING_DIRECTORY" \
  -v "$CERTIFICATE_DIRECTORY:/root/.ssh:ro" \
  -w "$WORKING_DIRECTORY" \
  --rm "argon:latest"