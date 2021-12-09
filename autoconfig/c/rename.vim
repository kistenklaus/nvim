
let g:clang_rename_path = "/home/linuxbrew/.linuxbrew/bin/clang-rename"



function! _Rename()
    write
    py3f $HOME/.config/nvim/autoconfig/c/clang-rename.py
    edit
endfunction

let g:which_key_map['r'] = [ ':call _Rename()', "rename-clang"]
