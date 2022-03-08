#!/usr/bin/bash

if [ -d .vim-build ]; then
    if [ -f Makefile ]; then
        make clean && bear -- make && make clean
        mv compile_commands.json ./.vim-build/compile_commands.json
    elif [ -f CMakeLists.txt ]; then
        cd .vim-build/
        cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ../
        cd ..
    fi
fi


