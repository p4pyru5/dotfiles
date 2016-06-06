


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


Plug 'Shougo/unite.vim'			" Replaces AG, CtrlP,
Plug 'Shougo/unite-outline'		" Shows Outline of file
Plug 'Shougo/neoyank.vim'		" yank history with unity

" TESTEN:
" Plug 'mbbill/undotree'
" Plug 'blueyed/vim-diminactive'
Plug 'terryma/vim-multiple-cursors'		" Mit C-n das Wort unter dem Cursor markieren, mehrmals für mehrere Vorkommen
Plug 'osyo-manga/vim-over'				" :OverCommandLine und danach suchen und ersetzen
Plug 'sickill/vim-pasta'				" Takes care of indention, just use p and P as usual

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

Plug 'Shougo/neosnippet'	" Snippets
Plug 'Shougo/neosnippet-snippets'


" Plug 'Shougo/neocomplete.vim'

"Plug 'sirver/ultisnips'

"Plug 'honza/vim-snippets'


Plug 'justmao945/vim-clang'


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



" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch      " highlight matches
set incsearch " set incremental search, like modern browsers<Paste>



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


"colorscheme solarized
colorscheme stephan
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow




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

" Vim Commentary
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType gnuplot setlocal commentstring=#\ %s





" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)








let g:neomake_splint_maker = {
        \ 'exe': 'splint',
        \ 'args': ['%:p'],
        \ }


if filereadable(expand("~/.config/nvim/plugins.vim"))
	source ~/.config/nvim/plugins.vim
endif






" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"






""""""""""""""""""""""
" => Nerdtree
""""""""""""""""""""""

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" remove some files by extension
let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>


let NERDTreeHighlightCursorline=1


function! StartUp()
    if 0 == argc()
        NERDTree
    " else
        " if argv(0) == '.'
            " execute 'NERDTree' getcwd()
        " else
            " execute 'NERDTree' getcwd() . '/' . argv(0)
        " endif
    endif
endfunction
" Open NERDTree on start
autocmd VimEnter * call StartUp()
" give focus on buffer, not on NERDTree
" autocmd VimEnter * wincmd p



" if nerdtree is last opend buffer, quit vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" default arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" -------------------------------------------
" => Nerdtree Git Plugin
" -------------------------------------------

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }





" -------------------------------------------
" CtrlP fuzzyfinder file search
" -------------------------------------------
" nmap <silent> <leader>t :CtrlP<cr>

"nmap <silent> <leader>r :CtrlPBuffer<cr>


" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pdf|eps)$',
\}


" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bs :CtrlPMRU<cr>

let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'





" -------------------------------------------
" AG Silver searcher
" -------------------------------------------
" bind K to search word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>












" Extra Highlighting für CtrlP
" http://stackoverflow.com/questions/27585722/is-it-possible-to-set-a-separate-color-scheme-for-the-popup-of-ctrlp-plugin
" wird anscheinend irgendwo überschrieben

" hi CtrlPLinePre ctermfg=214 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE







" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <Leader><leader>f :Unite -start-insert file<CR>
"nnoremap <Leader><leader>b :Unite -start-insert buffer<CR>
"nnoremap <leader><leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>

nnoremap <leader><leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader><leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>



"nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
"nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
"nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
"nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
"nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
"nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>



" ---------------------------------------------------
"  Completion with deoplete



" deoplete
let g:deoplete#enable_at_startup = 1





" let g:neocomplete#sources#dictionary#dictionaries = {
    " \'default' : '',
    " \'text' :'mydict.txt', "your target dictionary"
    " \}



" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)


" map <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"






" Multi Cursor Selection

" Default highlighting (see help :highlight and help :highlight-link)
" highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
" highlight link multiple_cursors_visual Visual



" -------------------------------------------
" Pasta Paste
let g:pasta_disabled_filetypes = ['python', 'coffee', 'yaml']








