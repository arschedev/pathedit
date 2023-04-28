#!/usr/bin/bash
echo -e "**********************************\n arschedev's pathedit uninstaller \n**********************************\n"

{
    sudo echo -n "chmod -x /usr/local/bin/pathedit... " &&
    sudo chmod -x /usr/local/bin/pathedit &&
    echo "OK"
    echo -n "rm /usr/local/bin/pathedit... " &&
    sudo rm /usr/local/bin/pathedit &&
    printf " %.0s" {1..6} &&
    echo "OK"
} || {
    echo -e "\nInstaller: unexpected error occurred while uninstalling\n..."
    exit 1
}

echo -e "\nSuccessfully uninstalled\n..."
