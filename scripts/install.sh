#!/bin/bash
echo -e "********************************\n arschedev's pathedit installer \n********************************\n"

# Dependencies
sudo echo "* Dependencies: "

# Perl
echo -n "-- Perl: "
perl -v &>/dev/null || {
    echo -e "not installed\n\nInstall Perl (https://www.perl.org/get.html)\n..."
    exit 1
}

echo -e "installed\n"

# Download
echo -n "* Downloading... "
curl https://raw.githubusercontent.com/arschedev/pathedit/main/src/pathedit --output pathedit --silent || {
    echo -e "\nInstaller: unexpected error occurred while downloading\n..."
    exit 1
}

printf " %.0s" {1..14}
echo -e "OK\n"

# Installation
echo "* Installing: "

{
    echo -n "-- Checking /usr/local/bin...  " &&
        if [ -d /usr/local/bin ]; then
            echo "OK"
        else
            echo "NO"
            echo -n "--- Creating /usr/local/bin... "
            sudo mkdir /usr/local/bin
            echo "OK"
        fi &&
        echo -n "-- Moving to /usr/local/bin... " &&
        sudo mv ./pathedit /usr/local/bin/pathedit &&
        echo "OK" &&
        echo -n "-- Marking as executable... " &&
        sudo chmod +x /usr/local/bin/pathedit &&
        printf " %.0s" {1..3} &&
        echo "OK"
} || {
    echo -e "\nInstaller: unexpected error occurred while installing\n..."
    exit 1
}

echo -e -n "\nSuccessfully installed "
pathedit -v | grep "pathedit version"
echo "..."
