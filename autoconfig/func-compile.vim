
function! _OnlyCompile()
    silent doautocmd User CompileEvent
    silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
    exec "!./.vim-build/compile.sh && ~/.config/nvim/autoconfig/move_to_target.sh ".g:executable_name
endfunction

function! _Compile()
    silent wa
    if (isdirectory(".vim-build/"))
        silent doautocmd User CompileEvent
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
        silent Tclose
        silent set splitright
        silent vertical Topen resize=tvsize
        silent Tclear
        silent Texec ./.vim-build/compile.sh
        silent exec "T ~/.config/nvim/autoconfig/move_to_target.sh ".g:executable_name
    else
        echo "No .vim-build Directory"
    endif
endfunction

function! _CompileSplit()
    silent wa
    if (isdirectory(".vim-build/"))
        doautocmd User CompileEvent
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
        silent Tclose
        silent set splitbelow
        silent botright Topen resize=thsize
        silent Tclear
        silent Texec ./.vim-build/compile.sh
        silent exec "T ~/.config/nvim/autoconfig/move_to_target.sh ".g:executable_name
    else
        echo "No .vim-build Directory"
    endif
endfunction

map <F11> :call _Compile() <CR>
map <F23> :call _CompileSplit() <CR>
command -nargs=0 Compile : call _Compile()
command -nargs=0 SCompile : call _CompileSplit()

silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
