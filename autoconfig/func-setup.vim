
function! _Setup()
    silent wa
    if(isdirectory(".vim-build/"))
        doautocmd User SetupEvent
        silent exec "!~/.config/nvim/autoconfig/req-setup.sh ".&ft
        set splitbelow
        silent botright Topen resize=5
        silent Texec ./.vim-build/setup.sh
        silent Texec exit
    else 
        echo "No .vim-build Directory"
    endif
endfunction

map <F8> :call _Setup() <CR>


command -nargs=0 Setup : call _Setup()

silent exec "!~/.config/nvim/autoconfig/req-setup.sh ".&ft
