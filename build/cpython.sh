#!/usr/bin/env bash

loc="$HOME/personal/cpython"

if [[ ! -d $loc ]]; then
    mkdir -p $loc
    git clone https://github.com/python/cpython.git $loc
else
    git -c $loc fetch 
    git -c $loc pull
fi

pushd $loc
sudo ./configure --enable-optimizations
sudo make altinstall
popd
