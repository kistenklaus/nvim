function! _Run()
    silent wa
    if(isdirectory(".vim-build/"))
        silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft
        call _Compile()
        silent terminal ./.vim-build/run.sh
        "silent call _Clean()
    else 
        echo "No .vim-build Directory"
    endif
endfunction

silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft
