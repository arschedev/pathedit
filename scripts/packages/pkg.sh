#!/bin/bash
if test -z "$1"; then
    echo "Version is not specified"
    exit
fi

echo "Type: osxpkg"
echo "Version: $1"
cd ../../src
fpm -s dir -t osxpkg -p ../packages/pathedit_noarch.pkg --name pathedit --license mit --version $1 --architecture noarch --depends perl --description "PATH management tool for Linux" --url "https://github.com/arschedev/pathedit" --maintainer "arschedev" pathedit=/usr/local/bin/pathedit
