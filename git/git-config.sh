#!/bin/sh

if ! git config user.name; then
    git config user.name "Ray Kuo"
fi

if ! git config user.email; then
    git config user.email ray20140811@gmail.com
fi

if ! git config core.editor; then
    git config core.editor emacs
fi

# git config --list
