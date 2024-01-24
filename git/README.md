# Learn Git By Example

## 初次設定 Git

顯示當前git config的所有設定

``` sh
git config --list
```

設定當前專案使用者姓名及郵件

``` sh
git config user.name "Ray Kuo"
git config user.email ray20140811@gmail.com
```
以上會將設定寫到 `.git/config` 檔案

``` sh
cat .git/config
```

再次顯示git config所有設定

``` sh
git config --list
```

也可指定查看某一個設定

``` sh
git config user.name
Ray Kuo
```

### 指定預設的編輯器

``` sh
git config core.editor emacs
```




## 狀況題:

### git push之後,後悔了

1. 用 `git log` 查看提交歷史,找到要回退的版本
2. 用 `git reset --hard HEAD^` 回退到前一個版本, 或者 指定版本 `git reset --hard <commitid>`
3. 用 `git push origin HEAD --force` 或 `git push --force origin master` 強制覆蓋遠端分支上的歷史記錄

*!!! 注意* 使用 `--force` 參數強制覆蓋遠端分支上的歷史記錄可能會導致資料丟失,請確保資料已備份(包含本地),避免意外刪除他人的修改.且之前提交的記錄都會消失,謹慎使用

