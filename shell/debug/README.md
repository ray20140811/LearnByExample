
# Table of Contents

1.  [Debug](#org47bfed7)
    1.  [使用 `-x` 選項來偵錯:](#orge1b9487)
    2.  [使用 `set -x` 和 `set +x` 對script進行局部偵錯:](#orgd43d1e0)


<a id="org47bfed7"></a>

# Debug

以下是一些常用的Shell Script偵錯方法:


<a id="orge1b9487"></a>

## 使用 `-x` 選項來偵錯:

用 `-x` 選項來運行shell script,可以顯示出所執行的每一行命令以及當前狀態。

例如: 執行 `./debug.sh` ,未帶 `-x` 選項, 直接輸出內容

    This is a normal message.
    This is a debug message.
    This is a normal message.

例如: 執行 `bash -x debug.sh` ,輸出含debug訊息的內容

    + normal
    + echo 'This is a normal message.'
    This is a normal message.
    + debug
    + echo 'This is a debug message.'
    This is a debug message.
    + normal
    + echo 'This is a normal message.'
    This is a normal message.

`+` 號: 表示進入debug, 並顯示執行的語句,不帶 `+` 號為執行的結果


<a id="orgd43d1e0"></a>

## 使用 `set -x` 和 `set +x` 對script進行局部偵錯:

例如: 執行 `./debug2.sh`

    # !/bin/sh
    
    function normal() {
        echo "This is a normal message."
    }
    
    function debug() {
        set -x
        echo "This is a debug message."
        set +x
    }
    
    normal
    
    debug
    
    normal

輸出如下結果

    This is a normal message.
    ++ echo 'This is a debug message.'
    This is a debug message.
    ++ set +x
    This is a normal message.

在上面的例子中, `++` 行 為偵錯訊息,使用 `-x` 和 `+x` 對偵錯區域進行了限制

