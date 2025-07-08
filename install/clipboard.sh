#!/usr/bin/env bash

if [[ -z ! "$1" ]]; then
    echo "no installation system provided"
    exit 0

elif [[ "$1" == "ubuntu-x" ]]; then
    sudo apt install xclip 

elif [[ "$1" == "ubuntu-w" ]]; then
    sudo apt install wl-clipboard

elif [[ "$1" == "fedora-x" ]]; then
    sudo dnf install xclip

elif [[ "$1" == "Fedora-w" ]]; then
    sudo dnf install wl-clipboard

fi
