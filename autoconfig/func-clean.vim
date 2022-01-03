function! _Clean()
    silent wa
    if(isdirectory(".vim-build/"))
        silent exec "!~/.config/nvim/autoconfig/req-clean.sh ".&ft
        silent terminal ./.vim-build/clean.sh
    else 
        echo "No .vim-build Directory"
    endif
endfunction
silent exec "!~/.config/nvim/autoconfig/req-clean.sh ".&ft


