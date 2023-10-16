#!/bin/sh
regex="^([+-][rwRW])$"

if [ $# -le 0 ]; then
    echo "Error: no args"
elif [[ $1 =~ $regex ]]; then
    for i in *"$2"; do 
        chmod g$1 $i
    done
else
    echo "Error : Only +r; -r and -w ; +w"
fi