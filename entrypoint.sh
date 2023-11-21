#!/bin/zsh

WORKING_DIRECTORY=$1

git config --global --add safe.directory "$WORKING_DIRECTORY"

/bin/zsh