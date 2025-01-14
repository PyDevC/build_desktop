#!/usr/bin/env bash

scripts_dir="$(cd "$(dirname ${BASH_SOURCE[0]} &> /dev/null && pwd)")"

dry="0"
grep=""

#check for arguments
while [[ $# -gt 0 ]]; do
  if [[ "$1" == "--dry" ]]; then
    dry="1"
  elif [[ "$1" == "" ]]; then 
    grep="$1"
  else
    echo "behavior undefined";
  fi
  shift
done

log(){
  # check the commandline arguments
  if [ "$#" -eq 2 ]; then
    case "$1" in 
      "--all")
        index=":1:3";;
      *)
       echo "not an argument";;
    esac
    file="$2"
  elif [ "$#" -eq 1 ]; then
    file="$1"
  fi
  components=("#" "git" "rm" "rmdir") 
  index=""

  while read -r line;do 
    if [ "$line" != "${line#*"${components[@]"${index}"}"}" ]; then    
      printf '%s\n' "$line"
    fi
  done < "$file" 
}
  

scripts_dir="$PWD/scripts"

for file in "$scripts_dir"/*; do
  if [[ "$dry" == "1" ]]; then
    printf "[[ DRY RUN: ${file##*/}]]\n"
    log "$file" "$2"
  else 
    $file
  fi
done

