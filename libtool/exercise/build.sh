#!/bin/sh
cd src
libtool --mode=compile gcc -c mylib.c -o libmylib.lo # 编译
libtool --mode=link gcc libmylib.lo -rpath /usr/local/lib -o libmylib.la  # 连接
libtool --mode=compile gcc -I../include -c main.c
libtool --mode=link gcc libmylib.la main.lo -o main
