# 如何使用標頭檔 .h 編譯 C 程式

``` sh
gcc -c main.c	# 生成 main.o
gcc -c math.c	# 生成 math.o
gcc -o main math.o main.o
```

以上也可以用一句直接編譯

``` sh
gcc main.c math.c -o main
```

# 編譯出gdb能夠debug的程序

``` bash
$ gcc -c main.c -g
$ gcc -c math.c -g
$ gcc -o main main.o math.o -g
$ gdb ./main
``` 