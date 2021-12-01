" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
      silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall
      autocmd VimEnter * PlugInstall | source $MYVIMRC
    endif

    call plug#begin('~/.config/nvim/autoload/plugged')

        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'

        " Treesitter
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
        
        "NeoClide
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

        "Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        
        "One Dark Theme
        Plug 'joshdick/onedark.vim'

        "Git integration
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
        "Float-Term
        Plug 'voldikss/vim-floaterm'
        " Latex Preview !!Doesn't work 
        Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

        "Which Key
        Plug 'liuchengxu/vim-which-key'

        "FZF
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'

        Plug 'airblade/vim-rooter'


    call plug#end()

    runtime ftplugin/man.vim
