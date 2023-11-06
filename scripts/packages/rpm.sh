#!/bin/bash
if test -z "$1"; then
    echo "Version is not specified"
    exit
fi

echo "Type: rpm"
echo "Version: $1"
cd ../../src
fpm -s dir -t rpm -p ../packages/pathedit_noarch.rpm --name pathedit --license MIT --version $1 --architecture noarch --depends perl-interpreter --description "PATH management tool for Linux" --url "https://github.com/arschedev/pathedit" --maintainer "arschedev" pathedit=/usr/local/bin/pathedit
