# run

run is a script to run all the other scripts (sounds weired but that's how it works).
It allows us to run, check and grep the scripts.

## Working of run

`run [-flags] [file]`

Flags

- no flags: run all the files in runs folder
- --dry: doesn't the scripts, just prints all the scripts that will run without --dry flag
- --install: run all the files in the install folder
- --build: run all the files in the build folder


## No Flags

When no flags are passed, it simply runs all the scripts present in runs folder.
The order in which scripts will run is not same all the times.

## --dry

This is very useful flag in the scenario where you don't know what scripts will
run for a given types of arguments passed.

## --install

This is for installing the scripts in install folder, you can also use --dry flag
to check which scripts will be installed first.

## --build

This is under developement, but the idea is to build the scripts from source.
