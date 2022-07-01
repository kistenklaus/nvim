let g:mapleader = "\<Space>"

syntax enable
set number
set nowrap
set hidden
set encoding=utf-8
set fileencoding=utf-8 
filetype on

set tabstop=4
set shiftwidth=4
set expandtab                           " Converts tabs to spaces 
set ruler              			" Show the cursor position all the time set tabstop=2 set number
set cursorline
set showtabline=2
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set timeoutlen=500                      " By default timeoutlen is 1000 ms	-
set updatetime=300                      " Faster completion
set clipboard=unnamedplus               " Copy paste between vim and everything else
set splitbelow


let thsize=10 
let tvsize=50

"Check if this actually works!
set smartindent                         " Makes indenting smart

"Disable auto Comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:python3_host_prog = expand("/usr/bin/python3")

let g:node_host_prog = expand("/usr/bin/node")

let g:neoterm_autoscroll=1

command Source execute 'source $HOME/.config/nvim/init.vim'
" command CloseOthers execute 'wa!|%bd!|e#|bd!#'

function! _NrBufs()
    let i = bufnr('$')
    let j = 0
    while i >= 1
        if buflisted(i)
            let j+=1
        endif
        let i-=1
    endwhile
    return j
endfunction

function! _Close()
    wa!
    Bdelete!
    while &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        bnext
        let buffer_count = _NrBufs();
        if buffer_count == 1
            return
        endif
    endwhile
endfunction

function! _CloseOthers()
    wa!
    %bd!
    e#
    bd!#
    "reopen at the correct line
endfunction

command Close call _Close()
command CloseOthers call _CloseOthers()

