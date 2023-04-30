#!/bin/bash
echo "Type: deb"
echo "Version: $1"
cd ../../src
fpm -s dir -t deb -p ../packages/pathedit_noarch.deb --name pathedit --license mit --version $1 --architecture noarch --depends perl --description "PATH management tool for Linux" --url "https://github.com/arschedev/pathedit" --maintainer "arschedev" pathedit=/usr/local/bin/pathedit
