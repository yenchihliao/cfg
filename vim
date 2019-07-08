"@yen: set indents
syntax on
set noexpandtab
set tabstop=4
set shiftwidth=4
filetype plugin indent on
set autoindent
    "set smartindent isn't good enough now
"@yen: highlight cursorline
set t_Co=256
set cursorline
hi Cursorline cterm=bold ctermbg=18
hi CursorlineNr cterm=bold ctermfg=red ctermbg=19
"@yen: 2019 Jan 10th change commet color"
hi Comment ctermfg=241 
"@yen: https://magiclen.org/vimrc/
"@yen: list all concealed characters
set listchars=eol:\\,tab:<-,space:`
"set list
hi SpecialKey ctermfg=240 guifg=240
hi NonText ctermfg=240 guifg=240
"@yen: new added by yen @Aug14, 2018
set nu
hi LineNr cterm=italic ctermfg=233 ctermbg=245
"statusline
set laststatus=2
"@yen: found from http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.htm
hi User1 ctermbg=darkgreen ctermfg=black guibg=darkgreen guifg=black
hi User2 ctermbg=darkgreen ctermfg=lightgrey guibg=darkgreen guifg=lightgrey
hi User3 ctermbg=darkgreen  ctermfg=darkred guibg=darkgreen  guifg=darkred
hi User4 ctermbg=red ctermfg=black guibg=red guifg=black
hi User5 ctermbg=darkblue  ctermfg=yellow guibg=darkblue  guifg=yellow
set statusline = 
set statusline+=%1*
set statusline+=%f       "tail of the filename
set statusline+=%2*
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%3*
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

set statusline+=%=      "left/right separator

set statusline+=%4*
set statusline+=%y      "filetype
set statusline+=%5*
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=...
"@yen: warp the window or not
set wrap
"set nowrap

"@yen: reconize solidity
au BufNewFile,BufRead *.sol setf solidity
