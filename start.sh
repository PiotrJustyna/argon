#!/bin/zsh

USER_NAME="argon"
HOME_DIRECTORY="/home/$USER_NAME"
# 2024-01-03 PJ:
# --------------
# This directory is referenced in the dockerfile.
WORKING_DIRECTORY="/tmp/code"
CERTIFICATE_DIRECTORY="$HOME/.ssh/"

docker build \
  --build-arg "USER_NAME=$USER_NAME" \
  -t "argon:latest" \
  -f "dockerfile" \
  . \
  && \
docker run \
  -it \
  -v "$(pwd):$WORKING_DIRECTORY" \
  -v "$CERTIFICATE_DIRECTORY:$HOME_DIRECTORY/.ssh:ro" \
  -v "$CERTIFICATE_DIRECTORY:/root/.ssh:ro" \
  -w "$WORKING_DIRECTORY" \
  --rm "argon:latest"