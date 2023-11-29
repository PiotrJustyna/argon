#!/bin/zsh

WORKING_DIRECTORY=$1

git config --global --add safe.directory "$WORKING_DIRECTORY"

dotnet tool restore

/bin/zsh