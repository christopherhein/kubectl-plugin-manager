#!/usr/bin/env bash

if [ -z "$1" ]
then
  echo "repo name cannot be empty"
  exit 1
else
  rm -fr ~/.kube/plugins/${1}
  echo "${1} removed."
fi
