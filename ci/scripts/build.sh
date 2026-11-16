#!/bin/bash -eux

set +x
git config --global url."https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${GITHUB_REPO_PATH}".insteadOf "https://github.com/${GITHUB_REPO_PATH}"
set -x

pushd dp-legacy-cache-proxy
  make build
  cp build/dp-legacy-cache-proxy Dockerfile.concourse ../build
popd
