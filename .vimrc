let mapleader =" "


" configure lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" BASIC SETTINGS
set nocompatible
set laststatus=2
set number relativenumber
set cursorline
set ruler
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
set wrap
set matchpairs+=<:>
set foldmethod=indent
set foldlevel=99

nnoremap <C-o> za

" AUTOCOMPLETION
set wildmode=longest,list,full

" split bottom and right
set splitbelow splitright

" split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" NERDTree
nmap <leader>ne :NERDTreeFocus<cr>
let NERDTreeShowHidden=1


" KEYMAP

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

" ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1


call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'junegunn/goyo.vim'
Plug 'kien/ctrlp.vim'
Plug 'lilydjwg/colorizer'
Plug 'RRethy/vim-illuminate'
Plug 'simeji/winresizer'
Plug 'lervag/vimtex'
call plug#end()
