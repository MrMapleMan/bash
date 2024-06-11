#!/bin/bash

if [[ "$#" -ne 2 ]]; then
  echo "Wrong number of arguments."
  echo '$#: '"$#"
  exit 1
fi

function random_char(){
  echo $1 $2
  for i in $(seq 1 $1); do
    c=$(( $RANDOM % 26 + 97 ))
    #c=$(shuf -n 1 -i 97-122)
    printf "\x$(printf %x $c)" >> $2
    rand_num=$(( $RANDOM % 90 ))
    if [[ $rand_num -eq 0 ]]; then
      printf "\n" >> $2
    fi
  done
}

rm -f $1
random_char $2 $1
