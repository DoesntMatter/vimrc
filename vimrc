"=============================
" Appearance
"=============================

" Set Terminal colors to 256
set t_Co=256

" Use dark background for better readability
set background=dark

" Use leo as colorscheme
" Change colorschemes manually with :colo $schemename
" My favourite ones are leo,candycode,desert256,relaxedgreen
colorscheme leo

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

" Show line numbers
set number

"=============================
" Useful mappings
"=============================

" Switch to matching object and highlight code between
" Example '{' and '}'
" To use press the % key
noremap % v%

" Tlist lists all functions and similar things
" Ctags has to be installed for this feature
" To use press the F2 key
noremap <F2> :Tlist<CR>

"=============================
" Useful functions
"=============================

" Function to delete trailing whitespaces
" To use type :call DeleteTrailingWS()
function! DeleteTrailingWS()
  %s/\s\+$//ge
endfunction

" Function to replace tabs with four spaces 
" To use type :call TabsToSpaces()
function! TabsToSpaces()
  %s/\t/    /ge
endfunction

" Function to replace Dos with Unix line endings
" To use type :call Dos2Unix()
function! Dos2Unix()
  :%s/\r//ge
endfunction

"=============================
" Statusline adjustments
"=============================

" Always show the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

" Needed functions for formatting
function! CurDir()
    let curdir = getcwd()
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction
