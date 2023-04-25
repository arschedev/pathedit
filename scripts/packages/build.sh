#!/usr/bin/bash
# check version
if test -z "$1"; then
    echo "Version is not specified"
    exit
fi

# print version
echo "Version: $1"

# remove packages
echo "> Remove .deb"
rm ../../packages/pathedit_noarch.deb
echo "> Remove .rpm"
rm ../../packages/pathedit_noarch.rpm

# create packages
echo "> Build .deb"
./deb.sh $1
echo "> Build .rpm"
./rpm.sh $1
