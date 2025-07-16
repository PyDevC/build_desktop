# BUILD Desktop

Get up ready running Ubuntu or Fedora desktop
*Not perfect, it may break* I will remove this line when I think that each and 
everything works

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
*Under development*

```bash
run --build # This is under development
```
