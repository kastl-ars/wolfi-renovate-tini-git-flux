#!/bin/bash

podman run \
    --rm \
    --pull=always \
    ghcr.io/kastl-ars/wolfi-renovate-tini-git-flux:22 --version

podman run \
    --rm \
    --pull=always \
    ghcr.io/kastl-ars/wolfi-renovate-tini-git-flux:latest --version
