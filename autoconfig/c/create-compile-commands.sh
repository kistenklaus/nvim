#!/usr/bin/bash

if [ -d .vim-build ]; then
    if [ -f Makefile ]; then
        make clean && bear -- make && make clean
    elif [ -f CMakeLists.txt ]; then
        cd .vim-build/
        cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ../
        mv compile_commands.json ../compile_commands.json
        cd ..
    fi
fi


