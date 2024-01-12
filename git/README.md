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


