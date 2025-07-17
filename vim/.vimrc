" Plugins
if filereadable("plugins.vim")
  source plugins.vim
endif

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
au FileType php set filetype=html syntax=php

" Highlighting for GitGutter
"White sign, colored background colorscheme
"highlight SignColumn term=bold ctermbg=234 ctermfg=8
"highlight GitGutterDelete term=bold ctermfg=88 ctermbg=88
"highlight GitGutterAdd term=bold ctermfg=189 ctermbg=22
"highlight GitGutterChange term=bold ctermfg=189 ctermbg=100

" Bell sounds
set belloff=all

" 100-character lines
set colorcolumn=100
