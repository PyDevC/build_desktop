#!/usr/bin/env bash

sudo apt install tmux

if [[ -z $HOME/personal/github/tmux ]];then
    git clone https://github.com/tmux/tmux.git $HOME/personal/github/tmux
fi
