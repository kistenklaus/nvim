!$HOME/.config/nvim/autoconfig/c/create-compile-commands.sh
!$HOME/.config/nvim/autoconfig/c/create-clang-format.sh

source $HOME/.config/nvim/autoconfig/c/binding-man-page.vim
source $HOME/.config/nvim/autoconfig/c/binding-coc-clangd.vim

source $HOME/.config/nvim/autoconfig/func-compile.vim
source $HOME/.config/nvim/autoconfig/func-run.vim
source $HOME/.config/nvim/autoconfig/func-clean.vim

source $HOME/.config/nvim/autoconfig/c/rename.vim

command -nargs=0 Run : call _Run()
command -nargs=0 Compile : call _Compile()
command -nargs=0 Clean : call _Clean()

