" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Utility
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'w0rp/ale'
"Plugin 'tpope/vim-sleuth'
"Plugin 'jceb/vim-orgmode'
"Plugin 'rakr/vim-one'
"Plugin 'vim-airline/vim-airline'
"Plugin 'FredKSchott/CoVim'

" Language support
Plugin 'plasticboy/vim-markdown'
Plugin 'c.vim'
Plugin 'PProvost/vim-ps1'
Plugin 'leafgarland/typescript-vim'
"Plugin 'rust-lang/rust.vim'
"Plugin 'python-mode/python-mode'
call vundle#end()
filetype plugin indent on

" START PLUGINS "

" Pymode
"let g:pymode_lint = 0

" Ctrl-P
set wildignore+=*/node_modules/*,*/tmp/*,*/.git/*,*/vendor/*,*/out/*
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" NERDTree
" If there is no argument provided, then automatically open NERDTree
au vimenter * if !argc() | NERDTree | endif
" If when entering a buf (triggered when a buffer is closed) there is only 1
" window open, and it is the NERDTree, and it is the tabbed tree, then quit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Ctrl-| finds the file in the NERDTree
nnoremap <C-y> :NERDTreeFind<CR>
nnoremap <C-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" The Silver Searcher (using ack.vim)
if executable('ag')
    " Override ack.vim's default program (hence 'prg') with ag
    let g:ackprg = 'ag --vimgrep --smart-case'

    nnoremap \ :Ack!<SPACE>
endif

" MiniBufExpl
nnoremap gl :MBEbn<CR>
nnoremap gh :MBEbp<CR>

" END PLUGINS "

" Line numbers
set number relativenumber

" Default to 4 spaces, expanded
" shiftwidth - number of spaces to insert for (auto)indent, such as for >>/<<
" softtabstop - number of spaces that a Tab counts for when editing
" tabstop - number of spaces that a Tab in the file counts for
" et - expand tabs into spaces
set sw=4 sts=4 ts=4 et

" Auto indent
set autoindent
set foldmethod=indent

" Syntax highlighting, if available
syntax on

" Mouse scroll
set mouse=a

" Case-insensitive search
set ignorecase

" Turn off highlight after search
nnoremap <C-h> :noh<CR>

" Close buffer without closing split
nnoremap <C-x> :bn\|bd #<CR>

" Set tab width in one go
command! -nargs=1 Stab set sw=<args> sts=<args> ts=<args>

" Color scheme
color desert

" Filetypes
" These are au[tocommands] that are run based on the filetypes
au FileType javascript setl sw=2 sts=2 ts=2
au FileType c setl sw=2 sts=2 ts=2
au FileType cpp setl sw=2 sts=2 ts=2
au FileType h setl sw=2 sts=2 ts=2
au FileType php set filetype=html syntax=php
