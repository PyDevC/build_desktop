#!/usr/bin/env bash

loc="$HOME/personal/cpython"

if [[ ! -d $loc ]]; then
    git clone https://github.com/python/cpython.git $loc
else
    git -c $loc fetch 
    git -c $loc pull
fi
