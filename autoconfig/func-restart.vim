
function! _Restart()
    silent wa
    if(isdirectory(".vim-build/"))
        silent doautocmd User RestartEvent
        silent exec "!~/.config/nvim/autoconfig/req-restart.sh ".&ft
        silent set splitbelow
        silent botright Topen resize=5
        silent Texec ./.vim-build/restart.sh
        silent Texec exit
    else 
        echo "No .vim-build Directory"
    endif
endfunction


map <F5> :call _Restart() <CR>


command -nargs=0 Restart : call _Restart()

silent exec "!~/.config/nvim/autoconfig/req-restart.sh ".&ft
