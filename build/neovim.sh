#!/usr/bin/env bash

version="master"
if [[ ! -z $1 ]];then
    version=$1
fi

loc=$HOME/personal/neovim

sudo dnf -y install ninja-build cmake gcc make gettext curl glibc-gconv-extra git lua5.1

if [[ ! -d $loc ]];then
    git clone https://github.com/neovim/neovim.git $neovim_loc
else
    git fetch --all
    git pull --all
fi

cd $loc
git checkout $version

make clean
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make build install
