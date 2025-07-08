#!/usr/bin/env bash

if [[ "$1" == "ubuntu-x" || "$1" == "ubuntu-w" ]]; then
    sudo apt install -y cmake gettext lua5.1 liblua5.1-0-dev luarocks npm
    ../runs/neovim.sh
elif [[ "$1" == "fedora-x" || "$1" == "Fedora-w" ]]; then
    sudo dnf install -y cmake gettext lua lua5.1 luarocks npm
    ../runs/neovim.sh
fi
