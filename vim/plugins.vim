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
"Plugin 'w0rp/ale'
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
