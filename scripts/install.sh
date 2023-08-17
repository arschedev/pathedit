#!/bin/bash
red="\e[1;91m"
green="\e[1;92m"
yellow="\e[1;93m"
blue="\e[1;94m"
magenta="\e[1;95m"
cyan="\e[1;96m"
gray="\e[2;97m"
reset="\e[0m"

## Title
echo -e -n "${magenta}"

echo "

      ┓    ┓    ╹        ┓    ┓• 
┏┓┏┓┏┏┣┓┏┓┏┫┏┓┓┏ ┏  ┏┓┏┓╋┣┓┏┓┏┫┓╋
┗┻┛ ┛┗┛┗┗ ┗┻┗ ┗┛ ┛  ┣┛┗┻┗┛┗┗ ┗┻┗┗
                    ┛            
"

echo -e -n "${reset}"

## Dependencies
sudo echo -e "${yellow}* Dependencies: ${reset}"

# perl
echo -n "-- perl: "
perl -v &>/dev/null || {
    echo -e "${red}not installed${reset}\n\n  ----\n  Dear $USER,\n\n  It seems that Perl is not currently installed on your machine.\n  ${red}Which is required for our software to function.${reset}\n  Obtain the Perl Programming Language from: ${blue}https://www.perl.org/get.html${reset}\n\n  Yours sincerely,\n  ${magenta}Installer${reset}\n\n"
    exit 1
}

echo -e "${green}installed${reset}\n"

## Download
echo -e -n "${yellow}* Downloading... ${reset}"
curl https://raw.githubusercontent.com/arschedev/pathedit/main/src/pathedit --output ~/Downloads/pathedit --silent || {
    echo -e "\n\n  ----\n  Dear $USER,\n\n  ${red}Unexpected error occurred while downloading.${reset}\n  It was a pleasure.\n\n  Yours sincerely,\n  ${magenta}Installer${reset}\n\n"
    exit 1
}

printf " %.0s" {1..14}
echo -e "${green}OK${reset}\n${gray}$HOME/Downloads/pathedit${reset}\n"

## Installation
echo -e "${yellow}* Installing: ${reset}"

{
    echo -n "-- Checking /usr/local/bin...  " &&
        if [ -d /usr/local/bin ]; then
            echo -e "${green}OK${reset}"
        else
            echo -e "${red}NO${reset}" &&
                echo -n "--- Creating /usr/local/bin... " &&
                sudo mkdir /usr/local/bin &&
                echo -e "${green}OK${reset}"
        fi &&
        echo -n "-- Moving to /usr/local/bin... " &&
        sudo mv ~/Downloads/pathedit /usr/local/bin/pathedit &&
        echo -e "${green}OK${reset}" &&
        echo -n "-- Marking as executable... " &&
        sudo chmod +x /usr/local/bin/pathedit &&
        printf " %.0s" {1..3} &&
        echo -e "${green}OK${reset}"
} || {
    echo -e "\n\n  ----\n  Dear $USER,\n\n  ${red}Unexpected error occurred while installing.${reset}\n  It was a pleasure.\n\n  Yours sincerely,\n  ${magenta}Installer${reset}\n\n"
    exit 1
}

# Installed
echo -e -n "\n${green}Installed:${reset}\n  pathedit v"
pathedit -V

## Complete!
echo "

┏┓       ┓     ╻
┃ ┏┓┏┳┓┏┓┃┏┓╋┏┓┃
┗┛┗┛┛┗┗┣┛┗┗ ┗┗ •
       ┛        
"
