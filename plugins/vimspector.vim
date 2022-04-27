let g:vimspector_install_gadgets = [ "vscode-cpptools" , "lldb-vscode" ]
let g:vimspector_base_dir=expand("$HOME/.config/nvim/vimspector-config")

function! _VimspectorLaunch()
    call _OnlyCompile()
    call vimspector#Restart()
endfunction

function! _VimspectorReset()
    call vimspector#Reset()
endfunction

autocmd User CloseApplication call _VimspectorReset()

map <F60> :call _VimspectorLaunch()<CR>
map <A-p> :call vimspector#Continue()<CR>
"map <A-r> :call vimspector#Restart()<CR>
map <A-b> :call vimspector#ToggleBreakpoint()<CR>
map <A-g> :call vimspector#GoToCurrentLine()<CR>

function! _UploadConfig()
    let cwd = getcwd()
    let g:vimspector_configurations={
            \"VSCode-CppTools Debugger": {
                \"adapter": "vscode-cpptools",
                \ "configuration": {
                \"request": "launch",
                \"targetArchitecture": "x86_64",
                \"program": "./target/".g:executable_name,
                \"cwd":cwd,
                \"externalConsole": "true",
                \"MIMode": "gdb",
                \"setupCommands": [
                    \{
                        \"description": "Enable pretty-printing for gdb",
                        \"text": "-enable-pretty-printing",
                        \"ignoreFailures": "true"
                     \}
                    \]
                \}
             \},
             \"CodeLLDB Debugger": {
                \"adapter": "CodeLLDB",
                \"configuration": {
                    \"request": "launch",
                    \"targetArchitecture": "x86_64",
                    \"program": "./target/".g:executable_name,
                    \"cwd":cwd,
                    \"externalConsole": "true",
                    \"MIMode": "lldb"
                \}
             \}
         \}
endfunction

call _UploadConfig()
    

autocmd User CreatedNewProject call _UploadConfig()
