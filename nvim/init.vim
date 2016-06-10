


"-----------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" colorschemes
" Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline


Plug 'tpope/vim-sensible'		" a universal set of defaults that (hopefully) everyone can agree on

" utilities
Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' 		" file drawer
Plug 'Raimondi/delimitMate' 	" automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-surround'		" Ändern von Sourroundings
Plug 'tpope/vim-repeat'			" Damit können auch Plugin-Aufrufe mit dem dot-command wiederholt werden
Plug 'tpope/vim-commentary'		" Kommentare einfügen/umschalten
Plug 'tpope/vim-fugitive'

Plug 'rking/ag.vim'				" Silver Searcher
Plug 'ctrlpvim/ctrlp.vim' 		" fuzzy file finder

Plug 'moll/vim-bbye'			" ByeBye Buffer, closes buffer without closing the window, :Bdelete


Plug 'Shougo/unite.vim'			" Replaces AG, CtrlP,
Plug 'Shougo/unite-outline'		" Shows Outline of file
Plug 'Shougo/neoyank.vim'		" yank history with unity



" Additional Text Objects
Plug 'kana/vim-textobj-user'			" Eigene Textobjekte
Plug 'kana/vim-textobj-entire'			" ie/ae					entire buffer
Plug 'kana/vim-textobj-line'			" il/al					entire line 
Plug 'thinca/vim-textobj-between'		" if{char}/af{char}		Region between {char}
Plug 'Julian/vim-textobj-brace'			" ij/aj					between next braces 
" Coding specific
Plug 'vim-scripts/argtextobj.vim'		" ia/aa					for function arguments
"Plug 'kana/vim-textobj-function'		" if/af, iF/aF
Plug 'kana/vim-textobj-indent'			" ii/ai, iI/aI

Plug 'vim-scripts/camelcasemotion'		" 


" ab hier... naja mal schauen
Plug 'libclang-vim/libclang-vim'				" dependency for 
Plug 'libclang-vim/vim-textobj-clang'			" For C/C++ blocks
Plug 'libclang-vim/clang-extent-selector.vim'	" mit C-t


" To expand the width of a split to the longest line in your file press <leader>m for height <leader>M
Plug 'blarghmatey/split-expander'		


Plug 'benmills/vimux'


Plug 'lervag/vimtex'


Plug 'neomake/neomake'		" Syntax-Checker, asynchron mit neovim



Plug 'easymotion/vim-easymotion'



function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/neco-syntax'	" Use syntax file for completion
" Plug 'Shougo/neocomplete.vim'

Plug 'Shougo/neosnippet'	" Snippets
Plug 'Shougo/neosnippet-snippets'


"Plug 'sirver/ultisnips'
"Plug 'honza/vim-snippets'

Plug 'justmao945/vim-clang'




" TESTEN:
" Plug 'mbbill/undotree'
" Plug 'blueyed/vim-diminactive'
Plug 'terryma/vim-multiple-cursors'		" Mit C-n das Wort unter dem Cursor markieren, mehrmals für mehrere Vorkommen
Plug 'osyo-manga/vim-over'				" :OverCommandLine und danach suchen und ersetzen
Plug 'sickill/vim-pasta'				" Takes care of indention, just use p and P as usual
Plug 'nathanaelkane/vim-indent-guides'	" Show helper lines for indention
Plug 'terryma/vim-expand-region'		" expand visual selection with +

Plug 'vim-scripts/taglist.vim'			" Source code browser

Plug 'airblade/vim-gitgutter'			" show changes of git-tracked files in sign-column
" Plug 'mhinz/vim-signify'



" Add plugins to &runtimepath
call plug#end()
"-----------------------------------------------------------------------
"-----------------------------------------------------------------------




" Abkürzungen, nützlich, wenn man sich verschreibt
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter







"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Get off my lawn
" nnoremap <Left> :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up> :echoe "Use k"<CR>
" nnoremap <Down> :echoe "Use j"<CR>


" Reduce timeout after <ESC> is recvd. This is only a good idea on fast links.
set ttimeout
set ttimeoutlen=20
set notimeout


" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','


" Enable filetype plugins
filetype plugin on
filetype indent on

set lazyredraw


" faster redrawing
set ttyfast


" disable Ex mode
noremap Q <NOP>


set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

set autoread " detect when a file is changed


set updatetime=500		" ms. default: 4000ms. important for gitgutter to automatically show changes in sign-color


" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch      " highlight matches
set incsearch " set incremental search, like modern browsers<Paste>


" Copy and paste from/to "*
" in unix this reg is also used for selected text, nice
set clipboard=unnamed


" ----------------------------------------------------------------------
"           _                                           
"          /_\  _ __ _ __  ___ _ _ ___ __ _ _ _  __ ___ 
"         / _ \| '_ \ '_ \/ -_) '_/ -_) _` | ' \/ _/ -_)
"        /_/ \_\ .__/ .__/\___|_| \___\__,_|_||_\__\___|
"              |_|  |_|                                 
" ----------------------------------------------------------------------

"   ___     _            
"  / __|___| |___ _ _ ___
" | (__/ _ \ / _ \ '_(_-<
"  \___\___/_\___/_| /__/
"                        


let BACKGROUND="dark"
set encoding=utf8

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif


" Explicitly tell vim that the terminal supports 256 colors"
set t_Co=256
let g:solarized_termcolors=256
	
let base16colorspace=256  " Access colors present in 256 colorspace"
execute "set background=".BACKGROUND


" colorscheme solarized
colorscheme stephan
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow

" execute "set background=".BACKGROUND

" colorscheme stephan



" --------------------------------
" airline options
" Airline status bar. Wichtig pacman -Sy powerline-fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='solarized'
let g:airline_solarized_bg=BACKGROUND

"let g:airline_theme='murmur'
"let g:airline_murmur_bg=BACKGROUND

"let g:airline_theme='tomorrow'
"let g:airline_tomorrow_bg=BACKGROUND


" smart tab bar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"let g:airline_left_sep=''
"let g:airline_right_sep=''


let g:airline#extensions#wordcount#enabled = 1






" highlight current line
set cursorline

" Numbers
set number
set numberwidth=4




"  _ _                         _                
" | (_)_ _  ___ _ _ _  _ _ __ | |__  ___ _ _ ___
" | | | ' \/ -_) ' \ || | '  \| '_ \/ -_) '_(_-<
" |_|_|_||_\___|_||_\_,_|_|_|_|_.__/\___|_| /__/
"                                               

set number			" Zeilennummern allgemein anzeigen
set relativenumber	" relative Zeilennummern anzeigen

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Toggle relative/absolut Line numbering
nnoremap <C-n> :call NumberToggle()<cr>

" -------------------------------
" Im insertmode werden immer absolute Zeilennnummern gezeigt.
" Wird vom insert mode zum normal mode zurück gewechselt, wird
" automatisch wieder die Einstellung vor dem insert hergestellt.
"
let g:isRelativeNumbering=&relativenumber
function! InsertModeNumbersRelativeOrAbsolute( entry )
	if a:entry == "entry"
		let g:isRelativeNumbering = &relativenumber
		set norelativenumber
	else
		if g:isRelativeNumbering == 1
			set relativenumber
		endif
	endif
endfunc

" Immer absolute Zeilenangaben im insert-mode
:au InsertEnter * :call InsertModeNumbersRelativeOrAbsolute("entry")
:au InsertLeave * :call InsertModeNumbersRelativeOrAbsolute("leave")







" Display extra whitespace
"set list listchars=tab:»\ ,trail:·,eol:¬
set list listchars=tab:▸\ ,trail:·






" Auto resize Vim splits to active split
"set winwidth=104
"set winheight=5
"set winminheight=5
"set winheight=999




" ----------------------------------------------------------------------
"  __  __         _          _                        _                                         
" |  \/  |_____ _(_)_ _     /_\  _ _ ___ _  _ _ _  __| |                                        
" | |\/| / _ \ V / | ' \   / _ \| '_/ _ \ || | ' \/ _` |                                        
" |_| _|_\___/\_/|_|_||_| /_/_\_\_| \___/\_,_|_||_\__,_|          _____       __  __            
"    |_   _|_ _| |__ ___ / /\ \    / (_)_ _  __| |_____ __ _____ / / _ )_  _ / _|/ _|___ _ _ ___
"      | |/ _` | '_ (_-</ /  \ \/\/ /| | ' \/ _` / _ \ V  V (_-</ /| _ \ || |  _|  _/ -_) '_(_-<
"      |_|\__,_|_.__/__/_/    \_/\_/ |_|_||_\__,_\___/\_/\_//__/_/ |___/\_,_|_| |_| \___|_| /__/
" ----------------------------------------------------------------------

set so=7 " set 7 lines to the cursors - when moving vertical


" -------------------------------
" Always show one line below/above when scrolling
if !&scrolloff
  set scrolloff=3
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Navigation between splits
"<C-W>hjkl


" Use tab to jump between blocks, because it's easier
" nnoremap <tab> %
" vnoremap <tab> %




"Map Ctrl + S to save in any mode
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


" Command completion
set wildmode=list:longest,list:full
set complete=.,w,t


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tab control
set noexpandtab 	" insert tabs rather than spaces for <Tab>
set smarttab 		" tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 		" the visible width of tabs
set softtabstop=4 	" edit as if the tabs are 4 characters wide
set shiftwidth=4 	" number of spaces to use for indent and unindent
set shiftround 		" round indent to a multiple of 'shiftwidth'
set completeopt+=longest



set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping

set showbreak=↪ " show arrow at breaking


if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif



"-----------------------------------------------------------------------
"           ___ _           _         
"          | _ \ |_  _ __ _(_)_ _  ___
"          |  _/ | || / _` | | ' \(_-<
"          |_| |_|\_,_\__, |_|_||_/__/
"                     |___/           
"-----------------------------------------------------------------------



if filereadable(expand("~/.config/nvim/init.plugins.vim"))
	source ~/.config/nvim/init.plugins.vim
endif






















