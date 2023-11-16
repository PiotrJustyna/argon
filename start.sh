WORKING_DIRECTORY="/home/code/argon"

docker build \
  -t "argon:latest" \
  -f "dockerfile" \
  . \
  && \
docker run \
  -it \
  -v "$(pwd):$WORKING_DIRECTORY" \
  -w "$WORKING_DIRECTORY" \
  --rm "argon:latest"