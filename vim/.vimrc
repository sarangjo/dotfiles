" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'rust-lang/rust.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'jceb/vim-orgmode'
"Plugin 'vim-airline/vim-airline'
"Plugin 'FredKSchott/CoVim'
call vundle#end()
filetype plugin indent on

" START PLUGINS "

" Pymode
let g:pymode_lint = 0

" Ctrl-P
set wildignore+=*/node_modules/*,*/tmp/*,*/.git/*,*/vendor/*,*/out/*
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" NERDTree
au vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" END PLUGINS "

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " bind \ (backward slash) to grep shortcut
    command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
endif

" Line numbers
set number

" Default to 4 spaces, expanded
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

" Close buffer without closing split TODO: replace bd with bn?
nnoremap <C-x> :bn\|bd #<CR>

" Color scheme
color desert

" Filetypes
" These are au[tocommands] that are run based on the filetypes
au FileType javascript setl sw=2 sts=2 ts=2
au FileType c setl sw=2 sts=2 ts=2
au FileType h setl sw=2 sts=2 ts=2
au FileType php set filetype=html
au FileType php set syntax=php
