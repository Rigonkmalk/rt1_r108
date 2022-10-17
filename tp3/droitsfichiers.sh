#!/bin/sh
regex="^([+-][rR]|[+-][wW])$"

if [ $# -le 0 ]; then
    echo "error: no args"
fi
if [[ $1 =~ $regex ]]; then
    for i in *"$2"; do 
        chmod g$1 $i
    done
else
    echo "Error : Only +r; -r and -w ; +w"
fi