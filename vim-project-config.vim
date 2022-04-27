
if (isdirectory(".vim-build/"))
    let working_dir = getcwd()
    let file=readfile(working_dir."/.vim-build/config")
    let g:executable_name=split(file[0],"=")[1]
else 
    let g:executable_name="NOT-SPECIFIED"
endif

function _CreateProject()
    let g:executable_name = input("Name of Executable: ")
    !mkdir ./.vim-build/
    exec "!echo executable=".g:executable_name." >> ./.vim-build/config"
    doautocmd User CreatedNewProject
endfunction

command NewProject call _CreateProject()
