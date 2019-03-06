let mapleader =" "


" PLUGINS
call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vimwiki/vimwiki'
call plug#end()


" BASIC SETTINGS
set number relativenumber
" set cursorline
set ruler
set smartindent
set tabstop=2
set expandtab

" AUTOCOMPLETION
set wildmode=longest,list,full

" split bottom and right
set splitbelow splitright

" split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l





" KEYMAP
imap jk <Esc>

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>


