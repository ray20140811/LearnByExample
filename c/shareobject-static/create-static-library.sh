#!/bin/sh

gcc mylib.c -c -o mylib.o
ar rcs libmylib.a mylib.o
gcc main.c -L. -lmylib -o main

# gcc main.c libmylib.a -o main

echo "if you delete the libmylib.a, it won't get any error."
