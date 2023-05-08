#!/bin/bash
# check version
if test -z "$1"; then
    echo "Version is not specified"
    exit
fi

# print version
echo "Version: $1"

# mark as executables
echo -e "\n> Setting up..."
sudo chmod +x deb.sh
sudo chmod +x rpm.sh
sudo chmod +x pkg.sh

# remove packages
echo "> Remove .deb"
rm ../../packages/pathedit_noarch.deb
echo "> Remove .rpm"
rm ../../packages/pathedit_noarch.rpm
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "> Remove .pkg"
    rm ../../packages/pathedit_noarch.pkg
fi

# create packages
echo -e "\n> Build .deb"
./deb.sh $1
echo -e "\n> Build .rpm"
./rpm.sh $1
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "\n> Build .pkg"
    ./pkg.sh $1
fi
