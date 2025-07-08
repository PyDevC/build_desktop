#!/usr/bin/env bash

if [[ ! -z "$1" ]]; then
    echo "no installation system provided"
    exit 0

elif [[ "$1" == "ubuntu-x" || "$1" == "ubuntu-w" ]]; then
    echo "No installation medium found"

elif [[ "$1" == "fedora-x" || "$1" == "Fedora-w" ]]; then
    sudo dnf copr enable pgdev/ghostty
    sudo dnf install -y ghostty
fi
