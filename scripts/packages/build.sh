#!/bin/bash

name="pathedit_noarch"
version="$1"

# check version
if test -z "$1"; then
    echo "Version is not specified"
    exit
fi

# print version
echo "Version: $version"

# mark scripts as executables
echo -e "\n> Setting up..."
sudo chmod +x deb.sh
sudo chmod +x rpm.sh
sudo chmod +x pacman.sh
sudo chmod +x pkg.sh

# remove old packages
echo -e "> Remove $name.deb\t\tdeb"
rm ../../packages/$name.deb
echo -e "> Remove $name.rpm\t\trpm"
rm ../../packages/$name.rpm
echo -e "> Remove $name.pkg.tar.zst\tpacman"
rm ../../packages/$name.pkg.tar.zst
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "> Remove $name.pkg\t\tpkg"
    rm ../../packages/$name.pkg
fi

# build new packages
echo -e "\n> Build $name.deb\t\tdeb"
./deb.sh $version
echo -e "\n> Build $name.rpm\t\trpm"
./rpm.sh $version
echo -e "\n> Build $name.pkg.tar.zst\tpacman"
./pacman.sh $version
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "\n> Build $name.pkg\t\tpkg"
    ./pkg.sh $version
fi
