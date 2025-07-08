#!/usr/bin/env bash

# Ubuntu
installation_path=$HOME/personal/github/fzf

git clone https://github.com/junegunn/fzf.git $installation_path
git -C $installation_path fetch --all
$installation_path/install
rm -rf $installation_path
