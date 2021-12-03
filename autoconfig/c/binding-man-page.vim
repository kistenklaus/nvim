
"Open Man Pages in Floaterm
function _Man()
    let word = expand("<cword>")
    execute "FloatermNew man " . word
endfunction

let g:which_key_map['m'] = [ ':call _Man()', "man"]
