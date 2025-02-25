#!/usr/bin/env bash

cd configs
mv .* $HOME

mkdir $XDG_CONFIG_HOME/tmux/
mv tmux.conf $XDG_CONFIG_HOME/tmux
