#!/usr/bin/env bash

: ${SALT_IMAGE_NAME:="rpi-initial-salt-ssh"}


function main {
    if ! docker history -q "${SALT_IMAGE_NAME}" &> /dev/null; then
        docker build -t "${SALT_IMAGE_NAME}" .
    fi

    docker run --rm -it \
        -w /opt/salt \
        -v "$(pwd -P):/opt/salt" \
        -v "$(cd && pwd -P)/.ssh:/root/.ssh:ro" \
        "${SALT_IMAGE_NAME}" ${@}
}

main ${@}