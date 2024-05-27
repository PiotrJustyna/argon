#!/bin/sh

DOCKER_HUB_ACCOUNT_NAME="piotrjustyna"

VERSION="2.0.0"

ARGON_TAG_NAME=argon

ARGON_TAG_VERSION="$VERSION"
ARGON_TAG_ARM64="$ARGON_TAG_NAME:$ARGON_TAG_VERSION-arm64"
ARGON_TAG_AMD64="$ARGON_TAG_NAME:$ARGON_TAG_VERSION-amd64"

ARGON_DOTNET_TAG_VERSION="$VERSION-dotnet"
ARGON_DOTNET_TAG_ARM64="$ARGON_TAG_NAME:$ARGON_DOTNET_TAG_VERSION-arm64"
ARGON_DOTNET_TAG_AMD64="$ARGON_TAG_NAME:$ARGON_DOTNET_TAG_VERSION-amd64"

# --- build ------------------------------------ #

# --- argon ------------------------------------ #

docker buildx build -f "./argon/dockerfile" -t "$ARGON_TAG_ARM64" --platform "linux/arm64" .

docker buildx build -f "./argon/dockerfile" -t "$ARGON_TAG_AMD64" --platform "linux/amd64" .

# --- argon dotnet ----------------------------- #

docker buildx build -f "./argon-dotnet/dockerfile" -t "$ARGON_DOTNET_TAG_ARM64" --platform "linux/arm64" .

docker buildx build -f "./argon-dotnet/dockerfile" -t "$ARGON_DOTNET_TAG_AMD64" --platform "linux/amd64" .

# --- tag -------------------------------------- #

# --- argon ------------------------------------ #

docker tag "$ARGON_TAG_ARM64" "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_TAG_ARM64"

docker tag "$ARGON_TAG_AMD64" "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_TAG_AMD64"

# --- argon dotnet ----------------------------- #

docker tag "$ARGON_DOTNET_TAG_ARM64" "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_DOTNET_TAG_ARM64"

docker tag "$ARGON_DOTNET_TAG_AMD64" "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_DOTNET_TAG_AMD64"

# --- publish ---------------------------------- #

# --- argon ------------------------------------ #

docker push "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_TAG_ARM64"

docker push "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_TAG_AMD64"

# --- argon dotnet ----------------------------- #

docker push "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_DOTNET_TAG_ARM64"

docker push "$DOCKER_HUB_ACCOUNT_NAME/$ARGON_DOTNET_TAG_AMD64"