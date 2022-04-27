" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
" TAB in general mode will move to text buffer
function! _NextBuffer()
    if &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        return
    endif
    :bnext
    while &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        :bnext
    endwhile
endfunction
nnoremap <TAB> :call _NextBuffer()<CR>
" SHIFT-TAB will go back


function! _PrevBuffer()
    if &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        return
    endif
    :bprev
    while &buftype=="terminal" || &buftype=="nofile" || &buftype=="prompt"
        :bprev
    endwhile
endfunction
nnoremap <S-TAB> :call _PrevBuffer()<CR>

tnoremap <Esc> <C-\><C-n>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


function! _CloseApplications()
    doautocmd User CloseApplication
endfunction

map <F9> :call _CloseApplications()<CR>
tnoremap <F9> <C-\><C-n>:call _CloseApplications()<CR>
