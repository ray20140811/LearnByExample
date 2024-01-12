
# Table of Contents

1.  [make -k example](#org7bbe6df)


<a id="org7bbe6df"></a>

# make -k example

當你使用 `make` 命令構建一個項目時，如果其中某個目標失敗了， `make` 會停止執行。
但是，如果你使用 `-k` 選項， `make` 會繼續執行，即使某個目標失敗了。

這個選項通常用於在一次構建中生成多個目標，並且即使其中一個目標失敗，也希望繼續構建其他目標。

下面是一個簡單的範例：

    all: target1 target2 target3
    
    target1:
        @echo "Building target1..."
        @false
    
    target2:
        @echo "Building target2..."
        @true
    
    target3:
        @echo "Building target3..."
        @true

在這個範例中，我們定義了三個目標： `target1` 、 `target2` 和 `target3` 。
`target1` 會失敗，而 `target2` 和 `target3` 會成功。

如果你使用 `make` 命令構建這個項目，你會看到類似下面的輸出：

> Building target1 &#x2026;
> make: **\*** [makefile:5: target1] Error 1

如果你使用 `make -k` 命令構建這個項目，你會看到類似下面的輸出：

> Building target1 &#x2026;
> make: **\*** [makefile:5: target1] Error 1
> Building target2 &#x2026;
> Building target3 &#x2026;
> make: Target 'all' not remade because of errors.

可以看到，即使 `target1` 失敗了， `make` 仍然繼續執行，並成功構建了 `target2` 和 `target3` 。

