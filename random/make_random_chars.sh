#!/bin/bash

function random_char(){
  echo $1
  for i in $(seq 1 $1); do
    c=$(( $RANDOM % 26 + 97 ))
    #c=$(shuf -n 1 -i 97-122)
    printf "\x$(printf %x $c)" >> /tmp/random_file
  done
}

rm -f /tmp/random_file
random_char 500
