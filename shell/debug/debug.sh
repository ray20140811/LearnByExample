# !/bin/sh

function normal() {
    echo "This is a normal message."
}

function debug() {
    #set -x
    echo "This is a debug message."
    #set +x
}

normal

debug

normal
