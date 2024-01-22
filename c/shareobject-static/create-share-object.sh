#!/bin/sh
gcc -shared -o mylib.so mylib.c
gcc main.c mylib.so -o main

# export LD_LIBRARY_PATH=./
echo "execute below command:"
echo "export LD_LIBRARY_PATH=./"
echo "if delete the mylib.so, it will get error message when you execute ./main."
