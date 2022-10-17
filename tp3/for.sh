#!/bin/sh
for d in ../*/; do
    if ( test -d $d ); then
        echo $d
    fi
done