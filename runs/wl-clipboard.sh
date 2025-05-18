#!/usr/bin/env bash

if [[ ! -d $HOME/personal/github/wl-clipboard]]; then
    git clone git@github.com:bugaevc/wl-clipboard.git $HOME/personal/github/wl-clipboard
fi

meson -c $HOME/personal/github/wl-clipboard build
ninja -c $HOME/personal/github/wl-clipboard/build
sudo meson -c install
