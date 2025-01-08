#!/usr/bin/env bash

scripts_dir="$(cd "$(dirname ${BASH_SOURCE[0]} &> /dev/null && pwd)")"

echo $scripts_dir
dry="0"
grep=""
echo $#

#check for arguments
while [[ $# -gt 0 ]]; do
  if [[ "$1" == "--dry" ]]; then
    $dry="1"
    echo "log"
  elif [[ "$1" == "" ]]; then 
    echo "exe"
  else
    echo "no argument";
  fi
done

