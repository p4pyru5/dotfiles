
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
"
" IMPORTANT: for changing color of CtrlPLinePre, uncomment Line 1753 in
" plugged/ctrlp.vim/autoload/ctrlp.vim (exe "hi CtrlPLinePre ...")
"
" -------------------------------------------

let g:ctrlp_line_prefix = '⚪ '
" let g:ctrlp_line_prefix = '➤ '
" let g:ctrlp_line_prefix = '❱ '
let g:ctrlp_line_prefix = '➔ '


" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pdf|eps)$',
\}


" Use a leader instead of the actual named binding
nmap <leader>pp :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>pb :CtrlPBuffer<cr>
nmap <leader>ps :CtrlPMRU<cr>

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

" hi CtrlPPrtCursor term=NONE cterm=NONE ctermbg=60





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








" -------------------------------------------
"  Indention Guide Lines 
"  https://github.com/nathanaelkane/vim-indent-guides
" Startet erst ab der 2. Einrückungstiefe
let g:indent_guides_start_level = 2
" Breite des Streifens
let g:indent_guides_guide_size = 1
" Farben selbst setzen
let g:indent_guides_auto_colors = 0






" ------------------------------------------
"  expand visual Selection

" Default settings. (NOTE: Remove comments in dictionary before sourcing)
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :1,
      \ 'i''' :1,
      \ 'i]'  :1,
      \ 'ib'  :1,
      \ 'iB'  :1,
      \ 'il'  :1,
      \ 'ip'  :1,
      \ 'ie'  :1,
      \ 'ae'  :1,
      \ }




" -------------------------------------------
"  Taglist
"

" Close if last window
let Tlist_Exit_OnlyWindow = 1
" show on right side
let Tlist_Use_Right_Window = 1
" Click on with single click, jumps to buffer line
let Tlist_Use_SingleClick = 1
" Show only tags from current buffer
let Tlist_Show_One_File = 1

nmap <leader>t :TlistToggle<cr>







" -------------------------------------------
"  Git Gutter



let g:gitgutter_sign_added = '▍+'
let g:gitgutter_sign_modified = '▍∓'
let g:gitgutter_sign_removed = '▍▁'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = 'ww'
" let g:gitgutter_sign_added = '▍'
" let g:gitgutter_sign_modified = '▍'
" let g:gitgutter_sign_removed = '▍'

" or signify? whats better for me?
let g:signify_sign_add = '▍+'
let g:signify_sign_change = '▍∓'





" Was ist damit? TODO

let g:neomake_splint_maker = {
		\ 'exe': 'splint',
		\ 'args': ['%:p'],
		\ }



