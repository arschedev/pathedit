#!/usr/bin/bash
echo -e "***********************************\n arschedev's pathedit uninstall.sh \n***********************************\n"

{
    sudo echo -n "chmod -x /usr/bin/pathedit... " &&
    sudo chmod -x /usr/bin/pathedit &&
    echo "OK"
    echo -n "rm /usr/bin/pathedit... " &&
    sudo rm /usr/bin/pathedit &&
    printf " %.0s" {1..6} &&
    echo "OK"
} || {
    echo -e "\nInstaller: unexpected error occurred while uninstalling\n..."
    exit 1
}

echo -e "\nSuccessfully uninstalled\n..."
