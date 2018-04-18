#!/usr/bin/env bash

if [ -z "$KUBECTL_PLUGINS_LOCAL_FLAG_PLUGIN_NAME" ]
then
  name=${1##*/kubectl-}
else
  name=$KUBECTL_PLUGINS_LOCAL_FLAG_PLUGIN_NAME
fi

if [ -z "$1" ]
then
  echo "repo name cannot be empty"
  exit 1
else
  git clone https://github.com/$1.git ~/.kube/plugins/${name}
fi
