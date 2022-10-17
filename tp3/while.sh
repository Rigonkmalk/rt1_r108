#!/bin/sh
if [ $# -le 0 ]; then
    echo "No args"
else
    while [ $# -gt 0 ]; do
        echo $1
        shift
    done
fi