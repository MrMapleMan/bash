awk '{ print $1 }' awk-test.txt > /tmp/awk-output.txt
awk -F, '{ print $1 }' awk-test.txt > /tmp/awk-output.txt
