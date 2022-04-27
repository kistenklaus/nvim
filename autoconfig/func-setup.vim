
function! _Setup()
    silent wa
    if(isdirectory(".vim-build/"))
        doautocmd User SetupEvent
        silent exec "!~/.config/nvim/autoconfig/req-setup.sh ".&ft
        silent Tclose
        set splitright
        silent vertical Topen resize=tvsize
        silent Texec ./.vim-build/setup.sh
    else 
        echo "No .vim-build Directory"
    endif
endfunction

map <F8> :call _Setup() <CR>


command -nargs=0 Setup : call _Setup()

silent exec "!~/.config/nvim/autoconfig/req-setup.sh ".&ft
