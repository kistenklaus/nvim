function! _Compile()
    silent wa
    if (isdirectory(".vim-build/"))
        silent doautocmd User CompileEvent
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
        silent set splitbelow
        silent botright Topen resize=5
        silent Texec ./.vim-build/compile.sh
        silent Texec exit
    else
        echo "No .vim-build Directory"
    endif
endfunction

function! _CompileSplit()
    silent wa
    if (isdirectory(".vim-build/"))
        doautocmd User CompileEvent
        silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
        silent set splitright
        silent vertical Topen 
        silent Texec ./.vim-build/compile.sh
    else
        echo "No .vim-build Directory"
    endif
endfunction

map <F11> :call _Compile() <CR>
map <F23> :call _CompileSplit() <CR>
command -nargs=0 Compile : call _Compile()
command -nargs=0 SCompile : call _CompileSplit()

silent exec "!~/.config/nvim/autoconfig/req-compile.sh ".&ft
