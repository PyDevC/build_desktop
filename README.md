# BUILD

This repo is used to quickly setup ubuntu or debian based linux enviornments. 
You can easily run the scripts in scripts directory or run the "run" file.

## Directory structure
|-personal-|-codes
|          |-tmux
|-env
|-bin
|-clones

## Install
To install normally
`./Install.sh`
`./configure.sh`

Creates a directory structure and contains all the env variables.
List of env variables
- $GithubUsername
- $GithubEmail
- $GitClone

### Installation scripts
- docker
- git
- git credential manager
- neovim
- tmux
- zsh


## Configure
configs contain all the configuration files for shells and tools
.bashrc 
.zshrc
.shell_aliases
.gitconfig
tmux.conf

if .configure doesn't work then manually all files in configs dir into $HOME
and put tmux.conf in ~/.config/tmux dir everything will be fine.

## Run Specific

`./run` will run all the scripts in scripts/ dir

**Warning** Under Development
`./run --filter="git"` This is still under development
