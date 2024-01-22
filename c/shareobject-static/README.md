# 介紹

共享函數庫（shared library）是一種函數庫，用於實現程式碼的共享和重用。它可以包含許多不同的函數，例如數學函數、字串處理函數、圖形處理函數等等。共享函數庫的主要優點是可以節省記憶體資源、提升開發效率，並且可以讓程式碼在更新之後不需要重新編譯。在 Windows 系統中，共享函數庫是以 .DLL、.OCX 或 .DRV 為副檔名的函式庫，用於實現共享函數函式庫的概念。而在 Linux 系統中，共享函數庫是以 .so 為副檔名的函式庫，用於實現共享函數函式庫的概念。

在 C 語言中，share object 和 static 是兩種不同的函式庫。其中，static 函式庫是一種在編譯時期將函式庫的內容直接編譯進可執行檔中的方式，因此在執行時期不需要再載入函式庫。而 share object 函式庫則是一種在執行時期才會載入函式庫的方式。share object 函式庫的副檔名是 .so，而 static 函式庫的副檔名則是 .a。

## 如何建立 share object

使用 GCC 編譯器將這些源文件編譯成share object。例如，以下命令將 mylib.c 編譯成 `share object` mylib.so：

`gcc -shared -o mylib.so mylib.c`

這個命令將 mylib.c 編譯成一個名為 mylib.so 的 `share object`。

要將 main.c 和 mylib.so 編譯和鏈結.則使用以下命令:

`gcc main.c mylib.so -o main`


將`share object`放置在系統的共享庫路徑中。這樣，其他程序就可以使用這個`share object`了。

在大多數 Linux 系統中，共享庫路徑是 /usr/lib 或 /usr/local/lib。
你可以使用以下命令將`share object`複製到共享庫路徑中：

`sudo cp mylib.so /usr/lib`

##  



