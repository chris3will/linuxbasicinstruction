#!/bin/bash

a="cat"
b="lynx"
if [ a \< b ]
then
echo "a is shorter than b"
else
echo "a is longer than b"
fi
