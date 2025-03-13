#!/usr/bin/env bash

#TODO: install latest version of go

if [[ ! -d $HOME/personal/github/fzf ]];then
    git clone https://github.com/junegunn/fzf.git $HOME/personal/github/fzf
fi

git -C $HOME/personal/github/fzf fetch --all

$HOME/personal/github/fzf/install
