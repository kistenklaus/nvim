#!/usr/bin/bash
if [ -f Makefile ]; then
    echo make >> .vim-build/compile.sh
elif [ -f CMakeLists.txt ]; then
    echo "cd .vim-build/" >> .vim-build/compile.sh
    echo "cmake ../" >> .vim-build/compile.sh
    echo "make" >> .vim-build/compile.sh
    echo "cd .."
fi

