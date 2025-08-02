#!/usr/bin/env bash

mkdir -p ~/.local/share/fonts/fonts/InconsolataLGC

pushd ~/.local/share/fonts/fonts/InconsolataLGC

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/InconsolataLGC.zip
unzip InconsolataLGC.zip
rm InconsolataLGC.zip

popd
