#!/usr/bin/bash
if [ -d .vim-build ] [ ! -f .clang-format ]; then
    cp ~/.config/nvim/autoconfig/cpp/clang-format ./.clang-format
fi
