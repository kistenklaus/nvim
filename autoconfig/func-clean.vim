function! _Clean()
    silent write
    if(isdirectory(".vim-build/"))
        silent exec "!~/.config/nvim/autoconfig/req-clean.sh ".&ft
        !./.vim-build/clean.sh
    else 
        echo "No .vim-build Directory"
    endif
endfunction
silent exec "!~/.config/nvim/autoconfig/req-clean.sh ".&ft


