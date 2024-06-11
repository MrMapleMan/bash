set -o xtrace
awk 'NF > 1 { print $1 }' awk-test.txt | head
awk -F",? " 'NF>1 { print $1 }' awk-test.txt | head

# https://linuxhandbook.com/awk-command-tutorial/
awk '$2 ~ /ia/ { print $2 }' awk-test.txt
awk 'NF>1 && $2 !~ /ia/ { print NR, $2 }' FS="[^,] " awk-test.txt
awk '/Raptors/,/Celtics/ { print $1 }' awk-test.txt
awk '$1 ~ /Raptors/,$3 > 49 { print $1,$2 }' awk-test.txt
awk '{ sum += $3 } END { printf "%05d\n", sum }' awk-test.txt
