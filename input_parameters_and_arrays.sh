#!/bin/bash

echo $@
echo $0
echo ${@:0:20}


echo "" > /tmp/txt-test

for i in {0..15};
do
  printf "%03d\n" $i >> /tmp/txt-test;
done;


a=(1 2 3 4 5)
echo ${a[@]:0:3}
echo ${a[4]}

mapfile -t lines_array < /tmp/txt-test
index=0
for line in ${lines_array[@]};
do
    printf "%03d %s\n" $index $line;
    index=$((index+1));
done;
