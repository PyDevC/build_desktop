#!/usr/bin/env bash

if [[ ! -d $HOME/personal/github/freeglut ]];then
    git clone https://github.com/freeglut/freeglut.git ~/personal/github/freeglut
fi

sudo apt-get install libglfw3-dev libgl2-mesa-dev libglu1-mesa-dev libglut-dev libglut3.12 libice-dev libsm-dev libxt-dev libglew-dev

cd ~/personal/github/freeglut

cmake .
make 
sudo make install
