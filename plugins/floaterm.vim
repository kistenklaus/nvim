nnoremap   <silent>   <F1>    :FloatermNew! cd %:p:h && clear<CR>
nnoremap   <silent>   <F2>    :FloatermPrev<CR>
nnoremap   <silent>   <F3>    :FloatermNext<CR>
nnoremap   <silent>   <F4>    :FloatermToggle<CR>

let g:floaterm_keymap_new    = '<F1>'
let g:floaterm_keymap_prev   = '<F2>'
let g:floaterm_keymap_next   = '<F3>'
let g:floaterm_keymap_toggle = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=1.0
let g:floaterm_height=1.0
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

let g:which_key_map.t = {
      \ 'name' : 'floaterm' ,
      \ 'g' : [':FloatermNew lazygit', 'git'],
      \ 'n' : [':FloatermNew node', 'node'],
      \ 'p' : [':FloatermNew python', 'python'],
      \ 'r' : [':FloatermNew ranger', 'ranger'],
      \ 'y' : [':FloatermNew ytop', 'ytop'],
      \ 's' : [':FloatermNew ncdu', 'ncdu'],
      \ }
