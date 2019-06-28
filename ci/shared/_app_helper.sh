#!/bin/bash

set -euxo pipefail

DOCKER_IMAGE_NAME="pipenv-all"
DOCKER_REPOSITORY="3amigos"
VERSION_MAJOR=$(($(date -u +'%Y') - 2000))
VERSION_MINOR=$(date -u +'%m')
VERSION_PATCH=$(date -u +'%d%H%M%S')
VERSION="${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}"
PYTHONVERS="\
    2.6 \
    2.7 \
    3.3 \
    3.4 \
    3.5 \
    3.6 \
    3.7 \
"
export PYTHONVERS
