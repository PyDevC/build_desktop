#!/usr/bin/env bash


loc="$HOME/personal/github/ghostty"

if [[ ! -d $loc ]]; then
    mkdir $loc
    git clone https://github.com/ghostty-org/ghostty.git $loc
fi

sudo dnf install \
  gtk4-devel \
  gtk4-layer-shell-devel \
  zig \
  libadwaita-devel \
  gettext

pushd $loc
sudo zig build -p /usr -Doptimize=ReleaseFast
popd 
