" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
      silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall
      autocmd VimEnter * PlugInstall | source $MYVIMRC
      "Commenting
    endif

    call plug#begin('~/.config/nvim/autoload/plugged')

        " Better Syntax Support
        "Plug 'sheerun/vim-polyglot'

        " Treesitter
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

        "Plug 'jackguo380/vim-lsp-cxx-highlight'

        Plug 'vim-syntastic/syntastic'
        
        "NeoClide
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'm-pilia/vim-ccls'
        "Native LSP
        "Plug 'neovim/nvim-lspconfig'
        "Plug 'hrsh7th/nvim-compe'

        "Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        "Commenting
        Plug 'numToStr/Comment.nvim'
        
        "One Dark Theme
        Plug 'joshdick/onedark.vim'

        "Git integration
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
        "Float-Term
        Plug 'voldikss/vim-floaterm'
        Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

        "Which Key
        Plug 'liuchengxu/vim-which-key'

        "FZF
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'

        "Plug 'airblade/vim-rooter'

        "Rainbow Bracets
        Plug 'frazrepo/vim-rainbow'

        Plug 'tyru/open-browser.vim'
        Plug 'weirongxu/plantuml-previewer.vim'

        "NeoTerm
        Plug 'kassio/neoterm'

        "Minimap
        "Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

        "i3 config highlighting
        Plug 'mboughaba/i3config.vim'

        "Dart/Flutter
        Plug 'dart-lang/dart-vim-plugin'
        "Plug 'thosakwe/vim-flutter'
        "Plug 'natebosch/vim-lsc'
        "Plug 'natebosch/vim-lsc-dart'
        "automaticlly keep window dimensions
        Plug 'kwkarlwang/bufresize.nvim'
        "smarter buffer delete utiltiy
        Plug 'famiu/bufdelete.nvim'
        "Debugger
        Plug 'puremourning/vimspector'


    call plug#end()

    runtime ftplugin/man.vim
