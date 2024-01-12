# 如何編譯動態鏈接庫 libxxx.so

``` sh
gcc math.c -c -fPIC 							# 生成 math.o
gcc math.o -shared -o libmath.so 	# 生成 libmath.so
```

以上也可以用一句直接編譯

``` sh
gcc math.c -fPIC -shared -o libmath.so	# 生成 libmath.so
```

動態庫鏈接生成可執行文件

``` sh
gcc main.c -L. -lmath -o main			# 生成 main
```

執行 `main`

``` sh
$ ./main
./main: error while loading shared libraries: libmath.so: cannot open shared object file: No such file or directory
```

用 `ldd` 查詢如何調用動態庫

``` sh
$ ldd main
linux-vdso.so.1 (0x00007ffc7a7f1000)
libmath.so => not found
libc.so.6 => /lib64/libc.so.6 (0x00007faf4a080000)
/lib64/ld-linux-x86-64.so.2 (0x00007faf4a291000)
```

發現 `libmath.so => not found`

此時要設定 `LD_LIBRARY_PATH` 這個環境變量, 指定動態鏈接器加載動態庫的路徑

``` sh
$ export LD_LIBRARY_PATH=/home/ray/MyProjects/LearnCByExample/dynamiclibraries:$LD_LIBRARY_PATH:
```

再次執行 `ldd main`

``` sh
$ ldd main
linux-vdso.so.1 (0x00007ffc70969000)
libmath.so => /home/ray/MyProjects/LearnCByExample/dynamiclibraries/libmath.so (0x00007fa477534000)
libc.so.6 => /lib64/libc.so.6 (0x00007fa477325000)
/lib64/ld-linux-x86-64.so.2 (0x00007fa47753b000)
```

可以看到已經找的到對應的動態庫 `libmath.so => /home/ray/MyProjects/LearnCByExample/dynamiclibraries/libmath.so (0x00007fa477534000)`

執行 `./main`

``` sh
$ ./main
5
```

# 補充說明

1. `-fPIC` 		選項指定生成位置獨立的代碼,適用於動態鏈接
2. `-shared` 	選項指定生成共享庫
3. `-L.`   		選項表示在編譯時指定動態庫的搜索路徑在當前目錄, 也可改成 `-L/path/to/lib` 指定搜索路徑
4. `-lmath` 	選項表示在編譯時指定動態庫的名稱, 這裡使用隱含的命名規則, 會默認在`math`名字前面加上lib，後面加上.so來找出動態庫的名稱
5. `export LD_LIBRARY_PATH` 環境變量, 再重新開啟 `terminal` 時會失效,需要重新設定. 可以添加在 `/etc/bashrc`
`LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ray/MyProjects/LearnCByExample/dynamiclibraries`

# 執行`export-ld-library-path.sh` 之後, `./main` 還是無法找到動態庫

如果要 export script內的變數,不能直接 `./xxx.sh` 要改用 `. xxx.sh` 或 `. ./xxx.sh` 或 `source ./xxx.sh`
