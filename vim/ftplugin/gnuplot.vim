" Gnuplot specific settings.
"
" filetyp specific settings: http://vim.wikia.com/wiki/Keep_your_vimrc_file_clean



nmap <Leader>gn  :w<CR> :call VimuxRunCommand("clear; gnuplot " . bufname("%"))<CR> 
nmap <Leader>gm :w<CR> :call VimuxRunCommand("clear; gnuplotmod " . bufname("%"))<CR>


 " Inspect runner pane map
 map <Leader>vi :VimuxInspectRunner<CR>

nmap <Leader>show :call VimuxRunCommand("atril " . expand("%:r") . ".eps")<CR>

























