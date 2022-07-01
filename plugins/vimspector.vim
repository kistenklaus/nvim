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
map <A-c> :call vimspector#RunToCursor()<CR>
map <A-o> :call vimspector#StepOver()<CR>
map <A-i> :call vimspector#StepInto()<CR>
map <A-u> :call vimspector#FrameUp()<CR>
map <A-d> :call vimspector#FrameDown()<CR>
map <A-k> <Plug>VimspectorBalloonEval
map <A-t> :call vimspector#ToggleBreakpoint()<CR>
map <A-m> :call vimspector#ReadMemory()<CR>


function! _UploadConfig()
    let cwd = getcwd()
    let cwdt = cwd."/target"
    let g:vimspector_configurations={
            \"VSCode-CppTools Debugger": {
                \"adapter": "vscode-cpptools",
                \ "configuration": {
                \"request": "launch",
                \"targetArchitecture": "x86_64",
                \"program": cwdt."/".g:executable_name,
                \"cwd": cwdt,
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
                    \"program": cwdt."/".g:executable_name,
                    \"cwd": cwdt,
                    \"externalConsole": "true",
                   \"MIMode": "lldb"
                \}
             \}
         \}
endfunction

call _UploadConfig()
    

autocmd User CreatedNewProject call _UploadConfig()

let g:vimspector_sidebar_width = 20
let g:vimspector_bottombar_height = 100
let g:vimspector_code_minwidth = 100
let g:vimspector_terminal_maxwidth = 75
let g:vimspector_terminal_minwidth = 20
   
function! s:CustomiseUI()
  " Customise the basic UI...

  " Close the output window
  call win_gotoid( g:vimspector_session_windows.output )
  q
  " Close Watches Window
  call win_gotoid(g:vimspector_session_windows.watches)
  q
  call win_gotoid(g:vimspector_session_windows.code)
  vertical resize 100
  
endfunction

function s:SetUpTerminal()
  " Customise the terminal window size/position
  " For some reasons terminal buffers in Neovim have line numbers
  call win_gotoid( g:vimspector_session_windows.terminal )
  wincmd J
  resize 4
  call win_gotoid(g:vimspector_session_windows.code)
  vertical resize 80
endfunction
function s:SetupWatches()
endfunction

augroup MyVimspectorUICustomistaion
  autocmd!
  autocmd User VimspectorTerminalOpened call s:SetUpTerminal()
  autocmd User VimspectorUICreated call s:CustomiseUI()
augroup END
