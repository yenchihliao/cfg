"@yen: Age of Pulgins @Jan23, 2020
"Remap of Plugin optiosns should be placed within vundle according to :help startup
"""""
" Mappings:
"	\tr for nerdtree
"	\un for undo history
"	\tag for tagbar
"	^f/^g to open/close CtrlP
"	\rb for rainbow-parentheses
"	\ig for indenet-guildes
"	NerdCommenter:
"		\cc for comment toggle
"		\ca for append comment
"		\cr for commenting rest fo the line
"	Gitgutter:
"		\gg for gitgutter
"		\ggf for folding
"		\hp to preview
"		\hu to undo
"		\hs to stage
"		]c/[c for jumping between hunks
"	Pymode:
"		\r to run python code
"		\dc to open documentation
"	SelfDefined:
"		\fi to fold indent
"		jj for <ESC>
"		oo for add newline in the next line.
"		OO for add newline in the previous line.
"Frequently Used:
"	:set paste/nopaste	# Stop autoindent when pasting
"	:set wrap/nowrap	# Wrap long lines when exceeding screen size
"	:set list/nolist	# Show hidden characters
"	:echo &[variableName] # Show the value of [variableName]
"""""

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" miscellaneous
Plugin 'nathanaelkane/vim-indent-guides' "show indent defualt: \ig
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
Plugin 'tpope/vim-fugitive' "Git plugin
Plugin 'preservim/nerdtree' "Tree
" Thanks to: https://superuser.com/questions/184844/hide-certain-files-in-nerdtree
let NERDTreeShowHidden=1
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
Plugin 'ivalkeen/nerdtree-execute' "Execute command in NERDTree menu
nnoremap \tr :NERDTreeToggle<CR>
Plugin 'airblade/vim-gitgutter'
nnoremap \ggf :GitGutterFold<CR>
nnoremap \gg :GitGutterToggle<CR>
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines=1
let g:NERDCreateDefaultMappings=0
" Thanks to: https://github.com/preservim/nerdcommenter/issues/278
let g:NERDCustomDelimiters = {'python': { 'left': '#', 'right': '' }}
nnoremap \cc :call NERDComment('n', 'toggle')<CR>
vnoremap \cc :call NERDComment('x', 'toggle')<CR>
nnoremap \ca :call NERDComment('n', 'append')<CR>
vnoremap \ca :call NERDComment('x', 'append')<CR>
nnoremap \cr :call NERDComment('n', 'toEOL')<CR>
vnoremap \cr :call NERDComment('x', 'toEOL')<CR>

Plugin 'tpope/vim-surround' "Surround command
Plugin 'AutoClose' "auto close parentheses
Plugin 'simnalamburt/vim-mundo' " show the undo tree
nnoremap \un :MundoToggle<CR>
let g:mundo_auto_preview_delay = 0
Plugin 'valloric/youcompleteme' " powerful auto complete
Plugin 'majutsushi/tagbar' "show tags
nnoremap \tag :TagbarToggle<CR>
Plugin 'kien/ctrlp.vim' "searcher
let g:ctrlp_map = '<c-f>' " replace original buffer forwad command
let g:ctrlp_cmd = 'CtrlPMRU'

" filetypes
Plugin 'chrisbra/csv.vim' " csv
" :NewDelimiter
" :ArrangeColumn
Plugin 'klen/python-mode' " python
let g:pymode_breakponit = 0
let g:pymode_lint = 0
let g:pymode_rope_completion = 0
let g:pymode_doc_bind = '<leader>dc'
Plugin 'nelstrom/vim-markdown-folding' "markdown

" statusLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
scriptencoding utf-8
set encoding=utf-8
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'P'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_alt_sep = '˴'

" coloScheme
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kien/rainbow_parentheses.vim' " add color to parentheses
nnoremap \rb :RainbowParenthesesToggle<CR>

call vundle#end()            " required
filetype plugin indent on    " required

" store undo history
set undofile
set undodir=~/.vim/undo

" indentation
syntax on
set noexpandtab " stop tab from being spaces
set tabstop=4
set shiftwidth=4
filetype plugin indent on
set autoindent

" HighLight
set nu
set cursorline
set hlsearch
" change comment color
"hi Comment ctermfg=241
"hi LineNr cterm=italic ctermfg=233 ctermbg=245
"hi Cursorline cterm=bold ctermbg=18
"hi CursorlineNr cterm=bold ctermfg=red ctermbg=19

" Render style
" https://magiclen.org/vimrc/,
" https://www.reddit.com/r/vim/comments/4hoa6e/what_do_you_use_for_your_listchars/
" http://www.fileformat.info/info/charset/UTF-8/list.htm
set listchars=eol:↲,tab:<-,extends:»,precedes:«,space:˴,nbsp:˴
set list " list all concealed characters
match ErrorMsg '\s\+$' "mark trailing space as ErrMsg
set wrap " warp the window or not
" fold text by indentation. :help fold.txt
nnoremap \fi :set foldmethod=indent<CR>:set foldmethod=manual<CR>
"hi SpecialKey ctermfg=240 guifg=240
"hi NonText ctermfg=240 guifg=240

" Mappings
inoremap jj <Esc>
nnoremap oo o<Esc>k
nnoremap OO O<Esc>j

" reconize solidity
au BufNewFile,BufRead *.sol setf solidity

set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='jellybeans'
let g:solarized_termcolors=256
let g:gruvbox_termcolors=256
set background=dark
colorscheme gruvbox
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
