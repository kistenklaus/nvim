function! _CloseNeoTerm()
    Tkill
    Texec exit
endfunction

autocmd User CloseApplication call _CloseNeoTerm()

let thsize=5
let tvsize=35
