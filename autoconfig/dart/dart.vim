
source $HOME/.config/nvim/autoconfig/func-run.vim
source $HOME/.config/nvim/autoconfig/func-restart.vim
source $HOME/.config/nvim/autoconfig/func-setup.vim


function __Setup()
    silent CocCommand flutter.emulators
endfunction
autocmd User SetupEvent call __Setup()

function __Run()
    silent CocCommand flutter.run
endfunction
autocmd User RunEvent call __Run()


function __Restart()
    silent CocCommand flutter.dev.hotRestart
endfunction
autocmd User RestartEvent call __Restart()



source $HOME/.config/nvim/autoconfig/dart/flutter-settings.vim
source $HOME/.config/nvim/autoconfig/dart/key-binding.vim


set tabstop=2
set shiftwidth=2
