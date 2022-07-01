function! _Clean()
    silent wa
    if(isdirectory(".vim-build/"))
        doautocmd User CleanEvent
        silent exec "!~/.config/nvim/autoconfig/req-clean.sh ".&ft
        silent Tclose
        silent set splitright
        silent vertical Topen resize=tvsize
        silent Tclear
        silent Texec ./.vim-build/clean.sh
        silent !rm target/ -r -f
    else 
        echo "No .vim-build Directory"
    endif
endfunction


function! _CleanSplit()
    silent wa
    if(isdirectory(".vim-build/"))
        doautocmd User CleanEvent
        silent exec "!~/.config/nvim/autoconfig/req-clean.sh ".&ft
        silent Tclose
        silent set splitbelow
        silent botright Topen resize=thsize
        silent Tclear
        silent Texec ./.vim-build/clean.sh
        silent !rm target/ -r -f
    else 
        echo "No .vim-build Directory"
    endif
endfunction


map <F10> :call _Clean() <CR>
map <F22> :call _CleanSplit() <CR>
command -nargs=0 Clean : call _Clean()
command -nargs=0 SClean : call _CleanSplit()

silent exec "!~/.config/nvim/autoconfig/req-clean.sh ".&ft


