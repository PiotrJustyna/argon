#!/bin/zsh

USER="argon"
HOME_DIRECTORY="/home/$USER"
WORKING_DIRECTORY="$HOME_DIRECTORY/code"
CERTIFICATE_DIRECTORY="$HOME/.ssh/"

docker build \
  -t "argon:latest" \
  -f "dockerfile" \
  . \
  && \
docker run \
  -it \
  -v "$(pwd):$WORKING_DIRECTORY" \
  -v "$CERTIFICATE_DIRECTORY:$HOME_DIRECTORY/.ssh:ro" \
  -w "$WORKING_DIRECTORY" \
  --rm "argon:latest" "./entrypoint.sh" "$WORKING_DIRECTORY"