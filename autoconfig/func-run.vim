function! _Run()
    silent write
    if(isdirectory(".vim-build/"))
        silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft
        silent call _Compile()
        !./.vim-build/run.sh
        silent call _Clean()
    else 
        echo "No .vim-build Directory"
    endif
endfunction

silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft
