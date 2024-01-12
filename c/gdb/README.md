# GDB 使用方法

## 編譯出gdb能debug的程序

``` sh
gcc -o main main.c -g
```

## 啟動 gdb

啟動 gdb,並對 `main` 進行偵錯(debug)

``` sh
$ gdb main
```

## 顯示代碼

``` sh
(gdb) list
1       #include <stdio.h>
2
3       int add(int x, int y);
4
5       int main()
6       {
7         int n1 = 2;
8         int n2 = 3;
9
10        printf("%d + %d = %d", n1, n2, add(2, 3));
```

## 設定斷點

``` sh
(gdb) break 8
Breakpoint 1 at 0x401135: file main.c, line 8.
```

## 運行程式

``` sh
(gdb) run
Starting program: /mnt/d/Ray/MyProjects/LearnCByExample/gdb/main
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".

Breakpoint 1, main () at main.c:8
8         int n2 = 3;
```

## 顯示變數內容

``` sh
(gdb) print n1
$1 = 2
(gdb) print n2
$2 = 0
```

## 逐步執行

``` sh
(gdb) step
10        printf("%d + %d = %d", n1, n2, add(2, 3));
(gdb) print n1
$3 = 2
(gdb) print n2
$4 = 3
```

## 退出gdb

``` sh
(gdb) quit
```
