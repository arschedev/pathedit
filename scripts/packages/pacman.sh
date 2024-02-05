#!/bin/bash

if test -z "$1"; then
    echo "Version is not specified"
    exit
fi

echo "Type: pacman"
echo "Version: $1"

cd ../../src || exit

fpm \
    -s dir -t pacman \
    -p ../packages/pathedit_noarch.pkg.tar.zst \
    --name pathedit \
    --license MIT \
    --version "$1" \
    --architecture noarch \
    --depends perl \
    --description "PATH management tool for Linux" \
    --url "https://github.com/arschedev/pathedit" \
    --maintainer "arschedev" \
    --pacman-compression zstd \
    pathedit=/usr/local/bin/pathedit
