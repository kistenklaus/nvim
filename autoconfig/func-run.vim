function! _Run()
    silent wa
    if(isdirectory(".vim-build/"))
        silent doautocmd User RunEvent
        silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft." ".g:executable_name
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft." ".g:executable_name
        silent Tclose
        silent set splitright
        silent vertical Topen resize=tvsize
        silent Tclear
        silent Texec ./.vim-build/compile.sh
        silent exec "T ~/.config/nvim/autoconfig/move_to_target.sh ".g:executable_name
        silent Texec ./.vim-build/run.sh
    else 
        echo "No .vim-build Directory"
    endif
endfunction

function! _RunSplit()
    silent wa
    if(isdirectory(".vim-build/"))
        silent doautocmd User RunEvent
        silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft." ".g:executable_name
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft." ".g:executable_name
        silent Tclose
        silent set splitbelow
        silent botright Topen resize=thsize
        silent Tclear
        silent Texec ./.vim-build/compile.sh
        silent exec "T ~/.config/nvim/autoconfig/move_to_target.sh ".g:executable_name
        silent Texec ./.vim-build/run.sh
    else 
        echo "No .vim-build Directory"
    endif
endfunction

map <F12> :call _Run() <CR>
map <F24> :call _RunSplit() <CR>


command -nargs=0 Run : call _Run()
command -nargs=0 SRun : call _RunSplit()

silent exec "!~/.config/nvim/autoconfig/req-run.sh ".&ft." ".g:executable_name
