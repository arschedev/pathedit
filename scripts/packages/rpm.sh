#!/usr/bin/bash
echo "Type: rpm"
echo "Version: $1"
cd ../../src
fpm -s dir -t rpm -p ../packages/pathedit_noarch.rpm --name pathedit --license mit --version $1 --architecture noarch --depends perl --description "PATH management tool for Linux" --url "https://github.com/arschedev/pathedit" --maintainer "arschedev" pathedit=/usr/local/bin/pathedit
