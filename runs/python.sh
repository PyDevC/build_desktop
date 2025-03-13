#!/usr/bin/env bash

curr_ver="$(python3 --version)"

if [[ -z $1 ]]; then
    wget http://www.python.org/ftp/python/$1/Python-$1.tar.gz
fi

if [[ $curr_ver == $1 ]];then
    echo "already installed: if installing with any other config then it might conflict"
fi

sudo apt-get install build-essential gdb lcov pkg-config \
      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
      libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \
      lzma lzma-dev tk-dev uuid-dev zlib1g-dev libmpdec-dev

tar -zxvf Python-$1.tar.gz

mkdir $HOME/local-python

. ~/Python-$1/configure --prefix=$HOME/local-python

make -C ~/Python-$1
make -C ~/Python-$1 test
sudo make -C ~/Python-$1 install
