#!/usr/bin/env bash

sudo apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
sudo apt-get asciidoc xmlto docbook2x
sudo apt-get install install-info

if [[ -z $(which git) ]]; then
    sudo apt install git
fi
version=`git --version`

echo "installed git version: $version" 

if [[ ! -d $HOME/git ]]; then
    git clone https://git.kernel.org/pub/scm/git/git.git $HOME/git
fi

git -C ~/git fetch --all
git -C ~/git checkout master

git_version="$(cat ~/git/GIT-VERSION-FILE)"

if [[ $git_version == $git_version ]]; then
    exit 0
fi

sudo apt purge git

make -C ~/git configure
. ~/git/configure --prefix=/usr
make -C ~/git all doc info
sudo make -C install install-doc install-html install-info
