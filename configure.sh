#!/usr/bin/env bash

repo="https://github.com/PyDevC/.dotfiles.git"

mkdir ~/.dot
git clone $repo ~/.dot

# establishing symlinks to respective places
cd ~/.dot/
configs=$(ls -d */)
for dir in $configs; do
  echo "Creating ${dir%%/*}"
  ln -s "$HOME/.dot/$dir" "$HOME/.config/${dir%%/*}"
done
