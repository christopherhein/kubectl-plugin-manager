#!/usr/bin/env bash

if [ -z "$1" ]
then
  echo "repo name cannot be empty"
  exit 1
else
  cd ~/.kube/plugins/${1} && git pull
fi
