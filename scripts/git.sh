#!/usr/bin/env bash

git clone https://git.kernel.org/pub/scm/git/git.git $GitClone

cd $GitClone/git
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info
