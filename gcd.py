#!/usr/bin/python

import sys

a = int(sys.argv[1])
b = int(sys.argv[2])

def gcd(a, b):
    if (b == 0):
        return a
    return gcd(b, a % b)

print gcd(a, b)
