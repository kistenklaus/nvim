
command LOC call _LineOfCode()
command LineOfCode call _LineOfCode()

function! _LineOfCode()
    !loc src/
endfunction
