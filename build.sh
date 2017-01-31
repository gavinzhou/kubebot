#!/bin/bash
set -ex
_tag=$1

if [ -z "${_tag}" ]; then
    source _VERSION
    _tag=${_VERSION}
fi

docker build --tag "orangesys/alpine-kubebot:${_tag}" .
