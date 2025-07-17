#!/usr/bin/env bash

echo "Can't run, script is not complete"

if [[ -z $(which git) ]]; then
    sudo dnf install git
fi

curr_version="$(git --version)"

loc=$HOME/personal/github/git

if [[ ! -d $loc ]];then
    git clone https://git.kernel.org/pub/scm/git/git.git $loc
fi

cd $loc
git fetch --all
git checkout master

new_version="$(cat ~/git/GIT-VERSION-FILE)"

if [[ $new_version == $curr_version ]]; then
    exit 0
fi

sudo dnf remove git

make configure
. configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info
