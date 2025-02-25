#!/usr/bin/env bash

cd configs
cp -r !(tmux.conf) $HOME

mkdir $XDG_CONFIG_HOME/tmux/
cp tmux.conf $XDG_CONFIG_HOME/tmux

olduser=("name = Username")
oldemail=("email = email")

newuser=("name = $GithubUsername")
newemail=("email = $GithubEmail")

sed -i -e 's/$(old)/$(new)/g' ~/.gitconfig
