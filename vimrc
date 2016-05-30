
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set shell=/bin/bash



if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set modelines=0

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

set ttyfast
set lazyredraw

:au FocusLost * :wa "Save on focus lost



set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set hlsearch      " highlight matches
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands


" Display extra whitespace
"set list listchars=tab:»\ ,trail:·,eol:¬
set list listchars=tab:▸\ ,trail:·



" disable Ex mode
noremap Q <NOP>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Get off my lawn
" nnoremap <Left> :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up> :echoe "Use k"<CR>
" nnoremap <Down> :echoe "Use j"<CR>


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright


" Reduce timeout after <ESC> is recvd. This is only a good idea on fast links.
set ttimeout
set ttimeoutlen=20
set notimeout


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif



set t_Co=256

let g:solarized_termcolors=256

:set smartcase
:set ignorecase
:set noantialias

" Color scheme
set background=dark
colorscheme solarized

" highlight current line
set cursorline


" Numbers
set number
set numberwidth=4


set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking
"set showbreak=¬ " show ellipsis at breaking


set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac




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
" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Tab control
set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" scho opend buffers and let choose one
nnoremap <leader>l :ls<CR>:b<Space>



set relativenumber



function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Toggle relative/absolut Line numbering
nnoremap <C-n> :call NumberToggle()<cr>


" on focus lost, set to absolute
:au FocusLost * :set number
" :au FocusGained * :set relativenumber




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



""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""


" Airline status bar. Wichtig pacman -Sy powerline-fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Aus Kompatibilitaet zu tmux wird C-a umgemappt.
" In tmux ist bei mir C-a der prefix
:nnoremap <leader>a <C-a>
:nnoremap <A-x> <C-x>


" So wird immer in das X11-Clipboard kopiert
set clipboard=unnamedplus


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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
" => Syntastic syntax checker
" -------------------------------------------
" recommended settings from their github page
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_highlighting=0

" -------------------------------------------
" => Auto Formatter
" https://github.com/Chiel92/vim-autoformat
" -------------------------------------------
noremap <F3> :Autoformat<CR>
" Disable fallback
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 1

let g:formatdef_my_custom_c = '"astyle --options=${HOME}/.astylerc ".(&expandtab ? "-s".shiftwidth() : "-t")'
let g:formatters_c = ['my_custom_c']




" -------------------------------------------
" vimux
" -------------------------------------------
" let g:VimuxOrientation = 'v'
" let g:VimuxUseNearestPane = 0
" Inspect runner pane map
nmap <Leader>vi :VimuxInspectRunner<CR>
nmap <leader>vp :VimuxPromptCommand<cr>
nmap <leader>vl :VimuxRunLastCommand<cr>
nmap <leader>vq :VimuxCloseRunner<cr>
" The percent of the screen the split pane Vimux will spawn should take up.
let g:VimuxHeight = "25"
" Vimux should only open a pane when there isn't one already
let g:VimuxUseNearestPane = 1
" The keys sent to the runner pane before running a command. By default it sends
" `q` to make sure the pane is not in scroll-mode and `C-u` to clear the line.
" let g:VimuxResetSequence = 'q C-l C-u'







" -------------------------------------------
" CtrlP file search
" -------------------------------------------
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }


function BrightHighlightOn()
  hi CursorLine ctermbg=100
endfunction

function BrightHighlightOff()
  hi CursorLine ctermbg=235
endfunction




" -------------------------------------------
" AG Silver searcher
" -------------------------------------------
" bind K to search word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>





set ruler

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

