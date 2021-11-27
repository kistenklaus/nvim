map <C-K> :pyf $HOME/.config/nvim/formatter/clang.py<cr>
imap <C-K> <c-o>:pyf $HOME/.config/nvim/formatter/clang.py<cr>

function! Formatonsave()
  let l:formatdiff = 1
  pyf $HOME/.config/nvim/formatter/clang.py
  echo "clang-format"
endfunction

autocmd BufWritePre *.h,*.cc,*.cpp,*.c call Formatonsave()
