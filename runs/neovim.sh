#!/usr/bin/env bash

version="master"
if [[ ! -z $1 ]];then
    version=$1
fi

neovim_loc=$HOME/personal/neovim

sudo dnf install -y cmake gettext lua5.1 liblua5.1-0-dev

if [[ ! -d $neovim_loc ]];then
    git clone https://github.com/neovim/neovim.git $neovim_loc
fi

# fetch latest updates
git -C $neovim_loc fetch --all
git -C $neovim_loc checkout $version

make -C $neovim_loc clean
make -C $neovim_loc CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make -C $neovim_loc/build install
