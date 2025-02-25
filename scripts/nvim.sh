#!/usr/bin/env bash

git clone https://github.com/neovim/neovim.git $GitClone
cd $GitClone/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
