if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin()
" GUI Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git related plugins
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'

" Syntax plugins
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

" Writing plugins
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'

" Nerd Tree Plugins
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Colors
Plug 'altercation/vim-colors-solarized', {'as':'solarized'}

cal plug#end()

" Show line numbers

" Syntax Highlighting
syntax on

" Syntax Highlighting Colorscheme
set background=dark
colorscheme solarized

" Turn relative line numbers on
set relativenumber number
set rnu

" Show keystrokes
set showcmd

filetype indent plugin on
syntax on
set hidden
set ai
set mouse=a
set incsearch
set confirm
set number
set ignorecase
set smartcase
set wildmenu
set showcmd
set hlsearch
set nomodeline
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set shiftwidth=4
set softtabstop=4
set expandtab

