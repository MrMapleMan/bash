#!/bin/bash

if [[ "$#" -ne 2 ]]; then
  echo "Wrong number of arguments."
  echo '$#: '"$#"
  exit 1
fi

function random_char(){
  echo $1 $2
  head -c $1 /dev/urandom > $2 
}

random_char $2 $1
echo "Wrote $2 bytes to $1."
