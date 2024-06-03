#!/bin/bash

echo $@
echo $0
echo ${@:0:20}


echo "" > /tmp/txt-test

for i in {0..99};
do
  printf "%03d\n" $i >> /tmp/txt-test;
done;


a=(1 2 3 4 5)
echo ${a[@]:0:3}
echo ${a[4]}

b=($0)
b+=($@)
i=0
for element in "${b[@]}"; do
  echo $i $element
  i=$((i+1))
done

array_length=${#a[@]}
echo "array length: $array_length"

echo b: $b
echo b[@]: ${b[@]}
# To append elements to a bash array, you can use the following syntax:
my_array=(element1 element2)
my_array+=("new_element")

# Print the updated array
for element in "${my_array[@]}"; do
    echo "$element"
done

mapfile -t lines_array < /tmp/txt-test
index=0
for line in ${lines_array[@]};
do
    printf "%03d %s\n" $index $line;
    index=$((index+1));
done;
