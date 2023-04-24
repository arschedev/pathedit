#!/usr/bin/bash
echo -e "*********************************\n arschedev's pathedit install.sh \n*********************************\n"

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
echo -n "* Download... "
curl https://raw.githubusercontent.com/arschedev/pathedit/main/src/pathedit --output pathedit --silent || {
    echo -e "\nInstaller: unexpected error occurred while downloading\n..."
    exit 1
}

printf " %.0s" {1..14}
echo -e "OK\n"

# Installation
echo "* Install: "

{
    echo -n "-- Moving to /usr/bin... " &&
    sudo mv ./pathedit /usr/bin/pathedit &&
    printf " %.0s" {1..3} &&
    echo "OK" &&
    echo -n "-- Marking as executable... " &&
    sudo chmod +x /usr/bin/pathedit &&
    echo "OK"
} || {
    echo -e "\nInstaller: unexpected error occurred while installing\n..."
    exit 1
}

echo -e -n "\nSuccessfully installed "
pathedit -v | grep version
echo ":D"
