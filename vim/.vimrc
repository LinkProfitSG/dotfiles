let mapleader = " "

nnoremap <leader>ff :Files<CR>

nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l

syntax on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

set number
set relativenumber
set ignorecase
set hidden
set smartcase
set incsearch
set hlsearch

call plug#begin()
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'ap/vim-css-color'
call plug#end()
