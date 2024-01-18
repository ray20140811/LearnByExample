
# Table of Contents

1.  [Learn Emacs By Example](#org5231c69)
    1.  [ide](#orge9c7f69)
    2.  [org-mode](#org382648f)
    3.  [scheme](#org4e333e9)
    4.  [自動換行](#org284bcd4)


<a id="org5231c69"></a>

# Learn Emacs By Example


<a id="orge9c7f69"></a>

## ide


<a id="org382648f"></a>

## org-mode


<a id="org4e333e9"></a>

## scheme


<a id="org284bcd4"></a>

## 自動換行

-   對於非 org-mode 模式，您可以使用以下命令來啟用自動換行
    
    M-x customize-option word-wrap
    
    然後將其調整為 off，並選擇 Apply and Save。這將在非 org-mode 模式下啟用自動換行。

-   對於 org-mode 模式，您可以在配置文件中添加以下代碼來啟用自動換行：
    
    (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
    
    這將在 org-mode 模式下啟用自動換行。

