#!/usr/bin/env bash

git clone https://github.com/tmux/tmux.git $GitClone
cd $GitClone/tmux
sh autogen.sh
./configure
make && sudo make install

mkdir -p ~/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm.git ~/.config/tmux/plugins
