function! MakeAndRun()
  write
  !make all -s
  !./a.out
  !make clean -s
endfunction

command -nargs=0 Run :call MakeAndRun()

