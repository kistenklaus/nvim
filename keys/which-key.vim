" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Define prefix dictionary
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeout
set timeoutlen=1000


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['h'] = [ '<C-W>s', 'split below']
let g:which_key_map['v'] = [ '<C-W>v', 'split right']
let g:which_key_map.d = {
      \ 'name' : 'delte-buffer' ,
      \ 'd' : [':Close', 'close-buffer'],
      \ '!' : [':CloseOthers', 'close-others'],
      \ }

let g:which_key_map.s = {
        \'name' : 'settings',
      \ }
" Register which key map
call which_key#register('<Space>', "g:which_key_map")

