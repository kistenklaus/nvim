#!/usr/bin/bash
EXECUTABLE=$1
if [ -d .vim-build ]; then
    if [ -f ".vim-build/$EXECUTABLE" ]; then
        mkdir target -p
        cp "./.vim-build/$EXECUTABLE" "./target/$EXECUTABLE"
    fi
fi

