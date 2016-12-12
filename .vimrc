" Vundle Plugins

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Townk/vim-autoclose'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim.git'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim.git'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()

" General Settings

filetype off
filetype plugin indent on
syntax on

set autoindent
set background=dark
set backspace=indent,eol,start
set cindent
set encoding=utf-8
set expandtab
set fileencodings=utf-8
set foldmethod=marker
set history=1000
set ignorecase
set incsearch
set linebreak
set linespace=3
set nobackup
set nocompatible
set noswapfile
set number
set shiftround
set shiftwidth=2
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set term=xterm-256color
set undolevels=1000

let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
colorscheme jellybeans

" NERDTree configuration

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0
let NERDTreeQuitOnOpen=0
let NERDTreeIgnore=['\~$']
let NERDTreeShowLineNumbers = 1
let NERDTreeWinSize = 25

map <C-\> :NERDTreeToggle<CR>

" Airline configuration

let g:airline_powerline_fonts = 1
set laststatus=2

" Remove trailing spaces before write

autocmd BufWritePre * %s/\s\+$//e

