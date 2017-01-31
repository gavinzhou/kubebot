#!/bin/bash

set -ex

_tag=$1

if [ -z "${_tag}" ]; then
    source _VERSION
    _tag=${_VERSION}
fi

docker tag "orangesys/alpine-kubebot:${_tag}" "asia.gcr.io/saas-orangesys-io/alpine-kubebot:${_tag}"
sudo /opt/google-cloud-sdk/bin/gcloud docker -- push asia.gcr.io/saas-orangesys-io/alpine-kubebot:${_tag}
