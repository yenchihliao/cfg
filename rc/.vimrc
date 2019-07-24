"@yen: change colo shcme"
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
"@yen: 2019 Jan 10th change comment color"
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


"@yen: change color scheme copied from /usr/share/vim74/color/desert.vim"
"
" syntax highlighting groups
hi Comment	guifg=SkyBlue
hi Constant	guifg=#ffa0a0
hi Identifier	guifg=palegreen
hi Statement	guifg=khaki
hi PreProc	guifg=indianred
hi Type		guifg=darkkhaki
hi Special	guifg=navajowhite
"hi Underlined
hi Ignore	guifg=grey40
"hi Error
hi Todo		guifg=orangered guibg=yellow2

" color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
"hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1

