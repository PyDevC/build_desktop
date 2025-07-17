#!/usr/bin/env bash

if [[ ! -d $HOME/personal/contrib/cpython ]]; then
    git clone https://github.com/python/cpython.git $HOME/personal/contrib/cpython
else
    git fetch 
    git pull
fi
