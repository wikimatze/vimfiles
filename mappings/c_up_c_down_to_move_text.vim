" Based on http://vim.wikia.com/wiki/VimTip646
" Define maps for Normal and Visual modes, then re-use
" them for Insert and Select.

" Normal mode
nnoremap <silent> <C-Up> :move -2<CR>
nnoremap <silent> <C-Down> :move +<CR>

" Visual mode
xnoremap <silent> <C-Up> :move '<-2<CR>gv
xnoremap <silent> <C-Down> :move '>+<CR>gv

" Insert mode
imap <silent> <C-Up> <C-O><C-Up>
imap <silent> <C-Down> <C-O><C-Down>

" Select mode
smap <silent> <C-Up> <C-G><C-Up><C-G>
smap <silent> <C-Down> <C-G><C-Down><C-G>
