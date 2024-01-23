# (理解 GNU Libtool)[https://segmentfault.com/a/1190000004000043]

## 建立 foo 库

库的头文件为 foo.h

``` c
#ifndef FOO_H
#define FOO_H

void foo(void);

#endif
```

foo.c 是这个库的实现：

``` c
#include "foo.h"

void foo(void)
{
}
```

## 生成共享库文件 libfoo.so

用 gcc 编译生成共享库文件 libfoo.so：

``` sh
$ gcc -shared -fPIC foo.c -o libfoo.so
```

# gcc 编译生成共享库的命令可以粗略的拆分为两步——编译与连接：

``` sh
$ gcc -fPIC foo.c -o libfoo.o  #编译
$ gcc -shared libfoo.o -o libfoo.so  #连接
```

## libtool 工作模式

libtool 说，如果你要用 gcc 编译生成一个共享库，不管它是在 Linux 里，还是在 Solaris，
还是在 Mac OS X 里，或者是在 Windows 里（Cygwin 或 MinGW），可以使用同样的命令：

``` sh
$ libtool --tag=CC --mode=compile gcc -c foo.c -o libfoo.lo # 编译
$ libtool --tag=CC --mode=link gcc libfoo.lo -rpath /usr/local/lib -o libfoo.la  # 连接
```

--tag 选项用于告诉 libtool 要编译的库是用什么语言写的，CC 表示 C 语言。
libtool 目前支持以下语言：
```
语言                Tag 名称
---------------------------
C                   CC
C++                 CXX
Java                GCJ
Fortran 77          F77
Fortran             FC
Go                  GO
Windows Resource    RC
---------------------------
```

--mode 选项用于设定 libtool 的工作模式。
上面的例子中，--mode=compile 就是告诉 libtool 要做的工作是编译，而 --mode=link 就是连接。

libtool 支持 7 种模式，除了上述两种模式之外，还有执行、安装、完成、卸载、清理等模式。

## 库的测试

对 foo 目录中的文件进行一些变动，变动后的目录结构如下：

``` sh
$ tree -a
.
├── lib
│   ├── foo.c
│   └── foo.h
└── test

2 directories, 2 files
```

在 test 目录中建立测试程序，即 test.c，其内容如下：

``` c
#include <foo.h>

int main(void)
{
        foo();
        return 0;
}
```

使用 libtool 重新编译生成库文件：

``` sh
$ cd test
$ libtool --tag=CC --mode=compile gcc -I../lib -c test.c
$ libtool --tag=CC --mode=link gcc ../lib/libfoo.la test.lo -o test
```

执行 test 程序：

```
$ ./test
```


## 库的安装与卸载

``` sh
$ cd lib  # 因为刚才跑到 foo 目录下查看了目录结构
$ sudo libtool --mode=install install -c libfoo.la /usr/local/lib
```

``` sh
$ sudo libtool --mode=uninstall rm /usr/local/lib/libfoo.la
```

## 清除

``` sh
$ cd lib
$ libtool --mode=clean rm libfoo.lo libfoo.la
$ cd ../test
$ libtool --mode=clean rm test.lo test
```



# 本範例執行步驟

``` sh
$ libtool --mode=compile gcc -c mylib.c -o libmylib.lo # 编译
$ libtool --mode=link gcc libmylib.lo -rpath /usr/local/lib -o libmylib.la  # 连接
$ libtool --mode=compile gcc -I../include -c main.c
$ libtool --mode=link gcc libmylib.la main.lo -o main
```

# 清除

``` sh
$ libtool --mode=clean rm libmylib.lo libmylib.la
$ libtool --mode=clean rm main.lo main
```