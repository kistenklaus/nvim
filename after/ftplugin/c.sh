#!/usr/bin/bash
if [ ! -f .ccls ]; then
		cp ~/.config/nvim/after/ftplugin/c.ccls ./.ccls
fi

if [ ! -f .clang-format ]; then
		cp ~/.config/nvim/after/ftplugin/c.clang-format ./.clang-format
fi

if [ ! -f .vim-compile.sh ]; then
		java -jar ~/.config/nvim/after/ftplugin/c-run-config/out/artifacts/Main/Main.jar $(pwd)
fi

if [ ! -f .vim-run.sh ]; then
		java -jar ~/.config/nvim/after/ftplugin/c-run-config/out/artifacts/Main/Main.jar $(pwd)
fi

if [ ! -f .vim-clean.sh ]; then
		java -jar ~/.config/nvim/after/ftplugin/c-run-config/out/artifacts/Main/Main.jar $(pwd)
fi 
