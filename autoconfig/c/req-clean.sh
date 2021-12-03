#!/usr/bin/bash
if [ -f Makefile ]; then
    echo "make clean" >> .vim-build/clean.sh
elif [ -f CMakeLists.txt ]; then
    echo "cd .vim-build" >> .vim-build/clean.sh
    echo "make clean" >> .vim-build/clean.sh
    echo "cd .." >> .vim-build/clean.sh
fi
