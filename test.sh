#!/bin/bash

cat << Plaintext
Test1q2w3
Plaintext

cat << 'SHELL'
if [ 1 -eq 1]; then
    echo fred
fi

function b{
    for i in {1..5}; do
        echo $i
    done
}
SHELL

# Test
echo Test

cat << 'SHELL'
function a{
    echo 1
}
SHELL

# Test
echo Test

python << 'PYTHON'
import os

def bob(test, one):
    """Bob function."""
    if test == 123:
        print(one)

    # Test
    for i in range(1,3):
        i+= 2
        print(i)

bob(123, 'test')
os.exit(0)
PYTHON

# Test
echo Test
