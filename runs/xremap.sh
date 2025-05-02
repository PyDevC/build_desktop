#!/usr/bin/env bash

if [[ -z "$(which cargo)" ]];then
   sudo apt install cargo
fi
cargo install xremap --features gnome   # GNOME Wayland
