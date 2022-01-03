function! _Compile()
    silent wa
    if (isdirectory(".vim-build/"))
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
        silent terminal ./.vim-build/compile.sh
    else
        echo "No .vim-build Directory"
    endif
endfunction

silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
