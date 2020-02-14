"@yen: Age of Pulgins @Jan23, 2020
"Remap of Plugin optiosns should be placed within vundle according to :help startup
"""""
"Mappings:
"\ig for indenet-guildes
"\tr for nerdtree
"\rb for rainbow-parentheses
"\un for undo history
"jj for <ESC>
"oo for add newline in next line
"""""

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'nathanaelkane/vim-indent-guides' "show indent defualt: \ig 
Plugin 'tpope/vim-fugitive' "Git plugin
Plugin 'preservim/nerdtree' "Tree
Plugin 'ivalkeen/nerdtree-execute' "Execute command in NERDTree menu
nnoremap \tr :NERDTree<CR>
Plugin 'tpope/vim-surround' "Surround command
Plugin 'AutoClose'
Plugin 'simnalamburt/vim-mundo'
nnoremap \un :MundoToggle<CR>
let g:mundo_auto_preview_delay = 0

"statusLine
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'
set encoding=utf-8 
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

"coloScheme
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized' 
Plugin 'nanotech/jellybeans.vim'
Plugin 'kien/rainbow_parentheses.vim'
nnoremap \rb :RainbowParenthesesToggle<CR>

call vundle#end()            " required
filetype plugin indent on    " required

"store undo history
set undofile
set undodir=~/.vim/undo

"@yen: set indents
syntax on
set noexpandtab
set tabstop=4
set shiftwidth=4
filetype plugin indent on
set autoindent
"set smartindent isn't good enough now

"@yen: new added by yen @Aug14, 2018
set nu
" hi LineNr cterm=italic ctermfg=233 ctermbg=245
"@yen: highlight cursorline
set cursorline
"hi Cursorline cterm=bold ctermbg=18
"hi CursorlineNr cterm=bold ctermfg=red ctermbg=19

"@yen: change comment color @Jan10, 2019 
hi Comment ctermfg=241 
"@yen: https://magiclen.org/vimrc/
"@yen: list all concealed characters
set listchars=eol:\\,tab:<-,space:`
"set list
hi SpecialKey ctermfg=240 guifg=240
hi NonText ctermfg=240 guifg=240

"@yen: mappings
inoremap jj <Esc>
nnoremap oo o<Esc>k
nnoremap OO O<Esc>j

"@yen: warp the window or not
set nowrap

"@yen: reconize solidity
au BufNewFile,BufRead *.sol setf solidity

set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jellybeans'
let g:solarized_termcolors=256
let g:gruvbox_termcolors=256
set background=dark
colorscheme gruvbox
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
