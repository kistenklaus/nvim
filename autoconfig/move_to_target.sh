#!/usr/bin/bash
EXECUTABLE=$1
if [ -d .vim-build ]; then
    if [ -f ".vim-build/$EXECUTABLE" ]; then
        if [ ! -d target ]; then
            mkdir target
        fi
        cp "./.vim-build/$EXECUTABLE" "./target/$EXECUTABLE"
    fi
fi

