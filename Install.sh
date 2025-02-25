#!/usr/bin/env bash

# create file structure
mkdir -p ~/personal/tmux ~/bin ~/personal/codes ~/env ~/clones

# new system variables

GitClone=~/clones

export GithubUsername=$1
export GithubEmail=$2
export GitClone=$GitClone
export XDG_CONFIG_HOME=~/.config

chmod +x run
./run
