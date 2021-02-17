#!/bin/bash

loop_function () {
  echo $var1 -- $(date);
  var1=$((var1+1));
}

var1=10;
for i in {1..5}; do loop_function; done;
