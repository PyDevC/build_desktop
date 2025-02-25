#!/usr/bin/env bash

cd configs
cp -r !(tmux.conf) $HOME

mkdir $XDG_CONFIG_HOME/tmux/
cp tmux.conf $XDG_CONFIG_HOME/tmux
