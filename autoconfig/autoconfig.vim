function! _OnEdit()
    if (findfile($HOME."/.config/nvim/autoconfig/".&ft."/".&ft.".vim") == $HOME."/.config/nvim/autoconfig/".&ft."/".&ft.".vim")
        exec "source ".$HOME."/.config/nvim/autoconfig/".&ft."/".&ft.".vim"
    endif
endfunction
au BufReadPost,BufNewFile * call _OnEdit()

autocmd User CreatedNewProject call _OnEdit()
