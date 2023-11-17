WORKING_DIRECTORY="/home/code/argon"

docker build \
  -t "argon:latest" \
  -f "dockerfile" \
  . \
  && \
docker run \
  -it \
  -v "$(pwd):$WORKING_DIRECTORY" \
  -v "/etc/ssl/certs:/etc/ssl/certs:ro" \
  -w "$WORKING_DIRECTORY" \
  --rm "argon:latest"