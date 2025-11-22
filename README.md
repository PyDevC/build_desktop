# BUILD Desktop

Get up ready running Ubuntu or Fedora desktop

> I am moving to another build setup that involves containers for various tasks
> I have moved to [Trench](https://github.com/PyDevC/trench)

## Running first time in your system
```bash
git switch "<branchname>" # this should be the branch according to your distro
./run --install
./run --config
```
> NOTE: I recommend to not set export DEV_ENV=$(pwd) in your bashrc or zshrc
> in order to prevent accidently running it

## get extra softwares
```bash
run neovim # now this command is runnable from anywhere
```

## building from source

```bash
run --build # This is under development
```
