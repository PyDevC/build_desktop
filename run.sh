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
  echo "${1##*/}"
  while read -r line;do 
    if [ "$line" != "${line#*#}" ]; then    
      printf '%s\n' "$line"
    fi
  done < "$1" 
}
  

scripts_dir="$PWD/scripts"

for file in "$scripts_dir"/*; do
  if [[ "$dry" == "1" ]]; then
    printf "[[ DRY RUN:]]\n"
    log "$file"
  else 
    $file
  fi
done

