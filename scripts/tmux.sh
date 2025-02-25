#!/usr/bin/env bash

git clone https://github.com/tmux/tmux.git $GitClone
cd $GitClone/tmux
sh autogen.sh
./configure
make && sudo make install
