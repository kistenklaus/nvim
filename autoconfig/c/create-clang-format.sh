#!/usr/bin/bash
if [ -d .vim-build ] && [ ! -f .clang-format ]; then
    cp ~/.config/nvim/autoconfig/c/clang-format ./.clang-format
fi
