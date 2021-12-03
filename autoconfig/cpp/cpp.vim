!$HOME/.config/nvim/autoconfig/cpp/create-clang-format.sh
!$HOME/.config/nvim/autoconfig/c/create-compile-commands.sh

source $HOME/.config/nvim/autoconfig/func-compile.vim
source $HOME/.config/nvim/autoconfig/func-run.vim
source $HOME/.config/nvim/autoconfig/func-clean.vim

source $HOME/.config/nvim/autoconfig/c/binding-man-page.vim
source $HOME/.config/nvim/autoconfig/c/binding-coc-clangd.vim

command -nargs=0 Run : call _Run()
command -nargs=0 Compile : call _Compile()
command -nargs=0 Clean : call _Clean()
