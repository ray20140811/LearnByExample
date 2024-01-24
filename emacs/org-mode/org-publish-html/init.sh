#!/bin/bash
# 建立 org 目錄
if [ ! -d org ]; then
    mkdir org
fi
# 建立 css 目錄
if [ ! -d org/css ]; then
    mkdir org/css
fi
# 建立 img 目錄
if [ ! -d org/img ]; then
    mkdir org/img
fi
# 建立 stylesheet.css 檔案
if [ ! -f org/css/stylesheet.css ]; then
    touch org/css/stylesheet.css
fi
# 建立 index.org 檔案
if [ ! -f org/index.org ]; then
    touch org/index.org
fi
# 建立 remember.org 檔案
if [ ! -f org/remember.org ]; then
    touch org/remember.org
fi


