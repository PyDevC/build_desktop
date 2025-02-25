#!/usr/bin/env bash

# create file structure
mkdir -p ~/personal/tmux ~/bin ~/personal/codes ~/env ~/clones


# read github configs
read -p "Github Username: " GithubUsername
read -p "Github Email: " GithubEmail

# new system variables

GitClone=~/clones

export GithubUsername=$GithubUsername
export GithubEmail=$GithubEmail
export GitClone=$GitClone

chmod +x run
./run
