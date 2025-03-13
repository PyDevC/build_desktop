#!/usr/bin/env bash

if [[ ! -d $HOME/cpython ]]; then
    git clone https://github.com/python/cpython.git $HOME/personal/github/cpython
fi

sudo apt-get install build-essential gdb lcov pkg-config \
      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
      libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \
      lzma lzma-dev tk-dev uuid-dev zlib1g-dev libmpdec-dev
