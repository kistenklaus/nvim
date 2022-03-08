function! _Run()
    silent wa
    if(isdirectory(".vim-build/"))
        silent doautocmd User RunEvent
        silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
        set splitbelow
        silent botright Topen resize=5
        silent Texec ./.vim-build/compile.sh
        silent Texec ./.vim-build/run.sh
        silent Texec exit
    else 
        echo "No .vim-build Directory"
    endif
endfunction

function! _RunSplit()
    silent wa
    if(isdirectory(".vim-build/"))
        silent doautocmd User RunEvent
        silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
        silent set splitright
        silent vertical Topen 
        silent Texec ./.vim-build/compile.sh
        silent Texec ./.vim-build/run.sh
    else 
        echo "No .vim-build Directory"
    endif
endfunction

map <F12> :call _Run() <CR>
map <F24> :call _RunSplit() <CR>


command -nargs=0 Run : call _Run()
command -nargs=0 SRun : call _RunSplit()

silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft
