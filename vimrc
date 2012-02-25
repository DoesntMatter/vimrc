"=============================
" Appearance
"=============================

" Best readable format
colorscheme zellner
set background=dark

"=============================
" Coding-Style adjustments
"=============================

" Set 4 whitespaces as tab
set expandtab
set shiftwidth=4
set tabstop=4

"=============================
" Miscellaneous
"=============================

" Turn on UTF-8 encoding
set encoding=utf8

"=============================
" Usability features
"=============================

" Hide cursor when editing
set mousehide

" Case insensitive matching for search
set ignorecase

" Incremental search
set incsearch

" This shows what you are typing as a command
set showcmd

" Returns to indent of previous line
" Probably this should be turned off for some actions
set autoindent

"=============================
" Useful mappings
"=============================

" Switch to matching object and highlight code between
" Example '{' and '}'
" To use press the % key
noremap % v%
