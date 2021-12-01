
function! _Compile()
  write
  if findfile(".vim-compile.sh", ".") != ".vim-compile.sh"
    !touch ./.vim-compile.sh
    !chmod +x ./.vim-compile.sh
  endif
  !./.vim-compile.sh
endfunction

function! _Run()
  _Compile()
  if findfile(".vim-run.sh", ".") != ".vim-run.sh"
    !touch ./.vim-run.sh
    !chmod +x ./.vim-run.sh
  endif
  !./.vim-run.sh
  _Clean()
endfunction

function! _Clean()
  if findfile(".vim-clean.sh", ".") != ".vim-clean.sh"
    !touch ./.vim-clean.sh
    !chmod +x ./.vim-clean.sh
  endif
  !./.vim-clean.sh
endfunction

command -nargs=0 Run : call _Run()
command -nargs=0 Compile : call _Compile()
command -nargs=0 Clean : call _Clean()

