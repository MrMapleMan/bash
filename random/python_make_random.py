#!/usr/bin/python3

import random

z_ord = ord('z')
a_ord = ord('a')
with open('/tmp/python_random','w+') as f:
  for i in range(500):
    f.write(chr(random.randint(a_ord, z_ord)))
