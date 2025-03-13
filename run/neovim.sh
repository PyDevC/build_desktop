#!/usr/bin/env bash

version="v0.10.2"
if [[ ! -z $1 ]];then
    version=$1
fi

sudo apt -y install cmake gettext lua5.1 liblua5.1-0-dev

if [[ -z $HOME/neovim ]];then
    git clone https://github.com/neovim/neovim.git $HOME
fi

# fetch latest updates
git -C ~/neovim fetch --all
git -C ~/neovim checkout $version

make -C ~/neovim clean
make -C ~/neovim CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make -C ~/neovim install
